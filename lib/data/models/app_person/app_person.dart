// Package imports:
import 'package:floor/floor.dart';

@entity
class AppPerson {
  @primaryKey
  int id;
  int age;
  String name, surname, phone, avatar;

  AppPerson({
    required this.id,
    required this.name,
    required this.surname,
    required this.age,
    required this.avatar,
    required this.phone,
  });
}
