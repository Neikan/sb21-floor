// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';
import 'package:app_floor/domain/blocs/bloc_persons.dart';
import 'package:app_floor/domain/blocs/bloc_persons_event.dart';
import 'package:app_floor/domain/blocs/bloc_persons_state.dart';
import 'package:app_floor/presentation/consts/keys.dart';
import 'package:app_floor/presentation/consts/translations.dart';
import 'package:app_floor/presentation/ui/components/ui_app_bar.dart';
import 'package:app_floor/presentation/ui/components/ui_text_field.dart';

part 'components/ui_avatar.dart';
part 'components/ui_avatar_picker.dart';

class ScreenPerson extends StatefulWidget {
  final AppPerson? person;
  final String? card;

  const ScreenPerson({
    super.key,
    this.person,
    this.card,
  });

  @override
  State<ScreenPerson> createState() => _ScreenPersonState();
}

class _ScreenPersonState extends State<ScreenPerson> {
  late final TextEditingController _controllerName;
  late final TextEditingController _controllerSurname;
  late final TextEditingController _controllerAge;
  late final TextEditingController _controllerPhone;
  late final TextEditingController _controllerCard;
  late String _avatar;

  @override
  void initState() {
    super.initState();

    final person = widget.person;

    _controllerName = TextEditingController(text: person?.name);
    _controllerSurname = TextEditingController(text: person?.surname);
    _controllerAge = TextEditingController(text: person?.age.toString());
    _controllerPhone = TextEditingController(text: person?.phone.toString());
    _controllerCard = TextEditingController(text: widget.card);

    _avatar = person?.avatar ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiAppBar(title: labelsPerson[keyTitle]!),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              UiTextField(
                labelText: labelsPerson[keyName]!,
                controller: _controllerName,
              ),
              UiTextField(
                labelText: labelsPerson[keySurname]!,
                controller: _controllerSurname,
              ),
              UiTextField(
                labelText: labelsPerson[keyAge]!,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                controller: _controllerAge,
              ),
              UiTextField(
                labelText: labelsPerson[keyPhone]!,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                controller: _controllerPhone,
              ),
              UiTextField(
                labelText: labelsPerson[keyCard]!,
                controller: _controllerCard,
              ),
              _UiAvatarPicker(
                onSelect: _handleSetAvatar,
                path: _avatar,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: BlocBuilder<BlocPersons, BlocPersonsState>(
        builder: (context, state) => FloatingActionButton(
          onPressed: () {
            final person = AppPerson(
              id: widget.person?.id ??
                  (context.read<BlocPersons>().repo.maxId + 1),
              name: _controllerName.text,
              surname: _controllerSurname.text,
              age: int.parse(_controllerAge.text),
              phone: int.parse(_controllerPhone.text),
              avatar: _avatar,
            );

            final card = _controllerCard.text;

            if (widget.person != null) {
              context.read<BlocPersons>().add(
                    BlocPersonsEventUpdate(person: person, card: card),
                  );
            } else {
              context.read<BlocPersons>().add(
                    BlocPersonsEventAdd(person: person, card: card),
                  );
            }

            Navigator.of(context).pop();
          },
          child: const Icon(Icons.done),
        ),
      ),
    );
  }

  void _handleSetAvatar(String path) {
    _avatar = path;
  }
}
