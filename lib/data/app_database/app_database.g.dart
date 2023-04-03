// GENERATED CODE - DO NOT MODIFY BY HAND

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
            'CREATE TABLE IF NOT EXISTS `AppPerson` (`id` INTEGER NOT NULL, `age` INTEGER NOT NULL, `phone` INTEGER NOT NULL, `name` TEXT NOT NULL, `surname` TEXT NOT NULL, `avatar` TEXT NOT NULL, PRIMARY KEY (`id`))');

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
                  'phone': item.phone,
                  'name': item.name,
                  'surname': item.surname,
                  'avatar': item.avatar
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AppPerson> _appPersonInsertionAdapter;

  @override
  Future<List<AppPerson>> findAllPersons() async {
    return _queryAdapter.queryList('SELECT * FROM Person',
        mapper: (Map<String, Object?> row) => AppPerson(
            row['id'] as int,
            row['name'] as String,
            row['surname'] as String,
            row['age'] as int,
            row['avatar'] as String,
            row['phone'] as int));
  }

  @override
  Stream<AppPerson?> findPersonById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Person WHERE id = ?1',
        mapper: (Map<String, Object?> row) => AppPerson(
            row['id'] as int,
            row['name'] as String,
            row['surname'] as String,
            row['age'] as int,
            row['avatar'] as String,
            row['phone'] as int),
        arguments: [id],
        queryableName: 'Person',
        isView: false);
  }

  @override
  Future<void> deletePersonById(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM Person WHERE id = ?1', arguments: [id]);
  }

  @override
  Future<void> dropTable() async {
    await _queryAdapter.queryNoReturn('DROP TABLE Person');
  }

  @override
  Future<AppPerson?> findMaxId() async {
    return _queryAdapter.query(
        'SELECT * FROM Person WHERE id = (SELECT MAX(id) FROM Person)',
        mapper: (Map<String, Object?> row) => AppPerson(
            row['id'] as int,
            row['name'] as String,
            row['surname'] as String,
            row['age'] as int,
            row['avatar'] as String,
            row['phone'] as int));
  }

  @override
  Future<void> update(
    String name,
    String surname,
    int age,
    String avatar,
    int phone,
    int id,
  ) async {
    await _queryAdapter.queryNoReturn(
        'UPDATE Person SET name = ?1, surname = ?2, age = ?3, avatar = ?4, phone = ?5 WHERE id = ?6',
        arguments: [name, surname, age, avatar, phone, id]);
  }

  @override
  Future<void> insertPerson(AppPerson person) async {
    await _appPersonInsertionAdapter.insert(person, OnConflictStrategy.abort);
  }
}
