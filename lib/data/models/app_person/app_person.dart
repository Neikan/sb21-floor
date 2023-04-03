// Package imports:
import 'package:floor/floor.dart';

@entity
class AppPerson {
  @primaryKey
  int id, age, phone;
  String name, surname, avatar;

  AppPerson(
    this.id,
    this.name,
    this.surname,
    this.age,
    this.avatar,
    this.phone,
  );
}
