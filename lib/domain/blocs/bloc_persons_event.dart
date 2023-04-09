// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';

abstract class BlocPersonsEvent {}

class BlocPersonsEventInit extends BlocPersonsEvent {}

class BlocPersonsEventAdd extends BlocPersonsEvent {
  final AppPerson person;
  final String card;

  BlocPersonsEventAdd({
    required this.person,
    required this.card,
  });
}

class BlocPersonsEventUpdate extends BlocPersonsEvent {
  final AppPerson person;
  final String card;

  BlocPersonsEventUpdate({
    required this.person,
    required this.card,
  });
}

class BlocPersonsEventRemove extends BlocPersonsEvent {
  final int id;

  BlocPersonsEventRemove({
    required this.id,
  });
}
