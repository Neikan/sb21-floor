// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_floor/data/repositories/repository_persons/repository_persons_imp.dart';
import 'package:app_floor/domain/blocs/bloc_persons.dart';
import 'package:app_floor/domain/blocs/bloc_persons_event.dart';
import 'package:app_floor/presentation/ui/components/ui_app.dart';

void main() {
  runApp(
    BlocProvider<BlocPersons>(
      create: (_) => BlocPersons(repo: RepositoryPersonsImp())
        ..add(BlocPersonsEventInit()),
      child: const UiApp(),
    ),
  );
}
