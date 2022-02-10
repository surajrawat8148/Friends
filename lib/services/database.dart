import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'dart:io';

part 'database.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file, logStatements: true);
  });
}

@DriftDatabase(tables: [Users, Friends])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  Future<int> addUsers(UsersCompanion entry) {
    return into(users).insert(entry);
  }

  Future<int> addFriend(FriendsCompanion entry) {
    return into(friends).insert(entry);
  }

  Future<List<User>> get getUsers => select(users).get();

  // Future<List<Friend>> get getFriends => select(friends).get();

  Future<List<Friend>> getFriends(int userId) {
    return (select(friends)..where((t) => t.userId.equals(userId))).get();
  }
}

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get mobile => text()();
  TextColumn get password => text()();
}

class Friends extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get mobile => text()();
  IntColumn get userId => integer().customConstraint("REFERENCES users(id)")();
}
