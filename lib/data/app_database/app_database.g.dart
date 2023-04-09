// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: library_private_types_in_public_api

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  AppPersonDao? _appPersonDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `AppPerson` (`id` INTEGER NOT NULL, `age` INTEGER NOT NULL, `name` TEXT NOT NULL, `surname` TEXT NOT NULL, `phone` TEXT NOT NULL, `avatar` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  AppPersonDao get appPersonDao {
    return _appPersonDaoInstance ??= _$AppPersonDao(database, changeListener);
  }
}

class _$AppPersonDao extends AppPersonDao {
  _$AppPersonDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _appPersonInsertionAdapter = InsertionAdapter(
            database,
            'AppPerson',
            (AppPerson item) => <String, Object?>{
                  'id': item.id,
                  'age': item.age,
                  'name': item.name,
                  'surname': item.surname,
                  'phone': item.phone,
                  'avatar': item.avatar
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AppPerson> _appPersonInsertionAdapter;

  @override
  Future<List<AppPerson>> getPersons() async {
    return _queryAdapter.queryList('SELECT * FROM AppPerson',
        mapper: (Map<String, Object?> row) => AppPerson(
            id: row['id'] as int,
            name: row['name'] as String,
            surname: row['surname'] as String,
            age: row['age'] as int,
            avatar: row['avatar'] as String,
            phone: row['phone'] as String));
  }

  @override
  Stream<AppPerson?> getPersonById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM AppPerson WHERE id = ?1',
        mapper: (Map<String, Object?> row) => AppPerson(
            id: row['id'] as int,
            name: row['name'] as String,
            surname: row['surname'] as String,
            age: row['age'] as int,
            avatar: row['avatar'] as String,
            phone: row['phone'] as String),
        arguments: [id],
        queryableName: 'AppPerson',
        isView: false);
  }

  @override
  Future<void> removePersonById(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM AppPerson WHERE id = ?1', arguments: [id]);
  }

  @override
  Future<void> dropTable() async {
    await _queryAdapter.queryNoReturn('DROP TABLE AppPerson');
  }

  @override
  Future<AppPerson?> getMaxId() async {
    return _queryAdapter.query(
        'SELECT * FROM AppPerson WHERE id = (SELECT MAX(id) FROM AppPerson)',
        mapper: (Map<String, Object?> row) => AppPerson(
            id: row['id'] as int,
            name: row['name'] as String,
            surname: row['surname'] as String,
            age: row['age'] as int,
            avatar: row['avatar'] as String,
            phone: row['phone'] as String));
  }

  @override
  Future<void> updatePerson(
    int id,
    String name,
    String surname,
    int age,
    String phone,
    String avatar,
  ) async {
    await _queryAdapter.queryNoReturn(
        'UPDATE AppPerson SET name = ?2, surname = ?3, age = ?4, avatar = ?6, phone = ?5 WHERE id = ?1',
        arguments: [id, name, surname, age, phone, avatar]);
  }

  @override
  Future<void> addPerson(AppPerson person) async {
    await _appPersonInsertionAdapter.insert(person, OnConflictStrategy.abort);
  }
}
