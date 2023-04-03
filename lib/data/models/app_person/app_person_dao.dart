// Package imports:
import 'package:floor/floor.dart';

// Project imports:
import 'package:app_floor/data/models/app_person/app_person.dart';

@dao
abstract class AppPersonDao {
  @Query('SELECT * FROM Person')
  Future<List<AppPerson>> findAllPersons();

  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<AppPerson?> findPersonById(int id);

  @Query('DELETE FROM Person WHERE id = :id')
  Future<void> deletePersonById(int id);

  @Query('DROP TABLE Person')
  Future<void> dropTable();

  @Query('SELECT * FROM Person WHERE id = (SELECT MAX(id) FROM Person)')
  Future<AppPerson?> findMaxId();

  @Query(
      'UPDATE Person SET name = :name, surname = :surname, age = :age, avatar = :avatar, phone = :phone WHERE id = :id')
  Future<void> update(
    String name,
    String surname,
    int age,
    String avatar,
    int phone,
    int id,
  );

  @insert
  Future<void> insertPerson(AppPerson person);
}
