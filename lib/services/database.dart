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

@DriftDatabase(tables: [Users])
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
}

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get mobile => text()();
  TextColumn get password => text()();
}


// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:friends_app/helper/model.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';

// // DB
// class DatabaseHelper {
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//   static Database? _database;
//   DatabaseHelper._privateConstructor();

//   Future<Database> get database async {
//     if (database != null) return _database!;

//     _database = await _initDatabase('note.db');
//     return _database!;
//   }

//   // Future<Database> _initDatabase(String filePath) async {
//   //   final dbPath = await getDatabasesPath();
//   //   final path = join(dbPath, filePath);
//   //   return await openDatabase(path, version: 1, onCreate: _onCreateDB);
//   // }

//   // Future _onCreateDB(Database db, int version) async {
//   //   final integerType = 'INTERGER NOT NULL';
//   //   final textType = 'TEXT NOT NULL';
//   //   final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';

//  //     await db.execute('''
// //       CREATE TABLE $tableNotes(
// //         ${NoteFields.id}$idType,
// //         ${NoteFields.name}$integerType,
// //         ${NoteFields.email}$integerType,
// //         ${NoteFields.number}$integerType,
// //         ${NoteFields.password}$integerType,
// //         ${NoteFields.time}$integerType,
// //          )
// //     ''');
// //   }

// //   Future<UserModel> create(UserModel note) async {
// //     final db = await instance.database;

// //     // final json = note.toJson();
// //     // final columns =
// //     //     '${NoteFields.name}, ${NoteFields.email}, ${NoteFields.number}';
// //     // final values =
// //     //     '${json[NoteFields.name]}, ${json[NoteFields.email]}, ${json[NoteFields.number]}';

// //     // final id = await db
// //     //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

// //     final id = await db.insert(tableNotes, note.toJson());
// //     return note.copy(id: id);
// //   }

// //   Future<UserModel> readNote(int id) async {
// //     final db = await instance.database;

// //     final maps = await db.query(
// //       tableNotes,
// //       columns: NoteFields().values,
// //       where: '${NoteFields.id}= ?',
// //       whereArgs: [id],
// //     );

// //     if (maps.isNotEmpty) {
// //       return UserModel.fromJson(maps.first);
// //     } else {
// //       throw Exception('ID $id not found');
// //     }
// //   }

// //   Future<List<UserModel>> readAllNotes() async {
// //     final db = await instance.database;

// //     final orderBy = '${NoteFields.time} ASC';

// //     // final result =
// //     //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

// //     final result = await db.query(tableNotes, orderBy: orderBy);

// //     return result.map((json) => UserModel.fromJson(json)).toList();
// //   }

// //   Future<int> update(UserModel note) async {
// //     final db = await instance.database;

// //     return db.update(
// //       tableNotes,
// //       note.toJson(),
// //       where: '${NoteFields.id} =?',
// //       whereArgs: [note.id],
// //     );
// //   }

// //   Future<int> delete(int id) async {
// //     final db = await instance.database;

// //     return await db.delete(
// //       tableNotes,
// //       where: '${NoteFields.id} = ?',
// //       whereArgs: [id],
// //     );
// //   }

// //   Future close() async {
// //     final db = await instance.database;

// //     db.close();
// //   }
// // }

// // faaaa
//   Future<Database> _initDatabase(String s) async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, 'usermodel.db');
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//     Create Table usermodel(
//       id INTEGER PRIMARY KEY,
//       name TEXT
//     )
//     ''');
//   }

//   Future<List<UserModel>> getUserModel() async {
//     Database db = await instance.database;
//     var usermodel = await db.query('usermodel', orderBy: 'name');
//     List<UserModel> userList = usermodel.isEmpty
//         ? usermodel.map((c) => UserModel.fromMap(c)).toList()
//         : [];
//     return userList;
//   }
// }

//  Future<int> add(UserModel) async {
//   Database db = await instance.database;
//   return await db.insert('usermodel', grocery.toMap());
// }
