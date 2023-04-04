// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Project imports:
import 'package:app_floor/data/app_database/app_database.dart';
import 'package:app_floor/data/models/app_person/app_person.dart';
import 'package:app_floor/data/models/app_person_dao/app_person_dao.dart';
import 'package:app_floor/data/repositories/repository_persons/repository_persons.dart';

const String _nameAppDatabase = 'app_database.db';

class RepositoryPersonsImp extends RepositoryPersons {
  RepositoryPersonsImp();

  late AppDatabase _database;
  late AppPersonDao _personDao;
  late FlutterSecureStorage _storage;
  late int lastId;

  @override
  Future<List<AppPerson>> get persons => _personDao.getPersons();

  @override
  Future<Map<String, String>> get cards => _storage.readAll();

  @override
  int get maxId => lastId;

  @override
  Future<void> init() async {
    await _initDatabase();
  }

  @override
  Future<void> add(AppPerson person, String card) async {
    await _personDao.addPerson(person);

    await _storage.write(
      key: person.id.toString(),
      value: card,
    );

    _getMaxId();
  }

  @override
  Future<void> update(AppPerson person, String card) async {
    await _personDao.updatePerson(
      person.name,
      person.surname,
      person.age,
      person.avatar,
      person.phone,
      person.id,
    );

    await _storage.write(
      key: person.id.toString(),
      value: card,
    );

    await _getMaxId();
  }

  @override
  Future<void> remove(int id) async {
    await _personDao.removePersonById(id);

    await _storage.delete(key: id.toString());

    await _getMaxId();
  }

  Future<void> _initDatabase() async {
    _database =
        await $FloorAppDatabase.databaseBuilder(_nameAppDatabase).build();

    _personDao = _database.appPersonDao;
    _storage = const FlutterSecureStorage();

    await _initTablePersons();

    await _getMaxId();
  }

  Future<void> _initTablePersons() async {
    await _database.database.execute(
      'CREATE TABLE IF NOT EXISTS `AppPerson` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `surname` TEXT NOT NULL, `age` INTEGER NOT NULL, `avatar` TEXT NOT NULL, `phone` INTEGER NOT NULL, PRIMARY KEY (`id`))',
    );
  }

  Future<void> _getMaxId() async {
    AppPerson? person = await _personDao.getMaxId();

    lastId = person?.id ?? 0;
  }
}
