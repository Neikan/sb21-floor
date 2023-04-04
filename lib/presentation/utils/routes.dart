// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';
import 'package:app_floor/presentation/consts/keys.dart';
import 'package:app_floor/presentation/consts/routes.dart';
import 'package:app_floor/presentation/ui/screens/screen_not_found.dart';
import 'package:app_floor/presentation/ui/screens/screen_person/screen_person.dart';
import 'package:app_floor/presentation/ui/screens/screen_persons/screen_persons.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routePersons:
            return const ScreenPersons();

          case routePerson:
            if (settings.arguments == null) return const ScreenPerson();

            final arguments = settings.arguments as Map<String, Object>;
            final person = arguments[keyPerson] as AppPerson?;
            final card = arguments[keyCard] as String?;

            return ScreenPerson(
              person: person,
              card: card,
            );

          default:
            return const ScreenNotFound();
        }
      },
    );
