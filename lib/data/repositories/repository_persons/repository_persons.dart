// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';

abstract class RepositoryPersons {
  const RepositoryPersons();

  Future<List<AppPerson>> get persons;
  Future<Map<String, String>> get cards;
  int get maxId;

  Future<void> init();

  Future<void> add(AppPerson person, String card);

  Future<void> update(AppPerson person, String card);

  Future<void> remove(int id);
}
