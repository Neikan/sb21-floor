// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';
import 'package:app_floor/data/models/app_person_raw/app_person_raw.dart';
import 'package:app_floor/domain/blocs/bloc_persons.dart';
import 'package:app_floor/domain/blocs/bloc_persons_event.dart';
import 'package:app_floor/domain/blocs/bloc_persons_state.dart';

class UiButtonCreate extends StatelessWidget {
  final AppPersonRaw person;
  final String card;

  const UiButtonCreate({
    super.key,
    required this.person,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPersons, BlocPersonsState>(
      builder: (context, _) {
        return FloatingActionButton(
          onPressed: () {
            final appPerson = AppPerson(
              id: context.read<BlocPersons>().repo.maxId,
              name: person.name,
              surname: person.surname,
              age: int.parse(person.age),
              phone: int.parse(person.phone),
              avatar: person.avatar,
            );

            context.read<BlocPersons>().add(
                  BlocPersonsEventAdd(person: appPerson, card: card),
                );

            Navigator.of(context).pop();
          },
          child: const Icon(Icons.done),
        );
      },
    );
  }
}
