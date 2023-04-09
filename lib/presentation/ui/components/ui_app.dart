// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_floor/presentation/consts/routes.dart';
import 'package:app_floor/presentation/ui/styles/themes.dart';
import 'package:app_floor/presentation/utils/routes.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      onGenerateRoute: generateRoute,
      initialRoute: routePersons,
    );
  }
}
