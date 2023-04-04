// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';
import 'package:app_floor/domain/blocs/bloc_persons.dart';
import 'package:app_floor/domain/blocs/bloc_persons_event.dart';
import 'package:app_floor/domain/blocs/bloc_persons_state.dart';
import 'package:app_floor/presentation/consts/keys.dart';
import 'package:app_floor/presentation/consts/routes.dart';
import 'package:app_floor/presentation/consts/translations.dart';
import 'package:app_floor/presentation/ui/components/ui_app_bar.dart';
import 'package:app_floor/presentation/ui/components/ui_loader.dart';
import 'package:app_floor/presentation/ui/components/ui_text_rich.dart';

part 'components/ui_button_create.dart';
part 'components/ui_list_tile.dart';
part 'components/ui_data_empty.dart';
part 'components/ui_list.dart';

class ScreenPersons extends StatelessWidget {
  const ScreenPersons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiAppBar(title: labelsPersons[keyTitle]!),
      body: SafeArea(
        child: BlocBuilder<BlocPersons, BlocPersonsState>(
          builder: (_, state) => state.when(
            init: () => const UiLoader(),
            loadedNoData: () => _UiEmptyData(text: labelsPersons[keyContent]!),
            loadedData: (persons, cards) =>
                _UiList(persons: persons, cards: cards),
          ),
        ),
      ),
      floatingActionButton: const _UiButtonCreate(),
    );
  }
}
