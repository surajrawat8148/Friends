import 'package:flutter/material.dart';
import 'package:friends_app/helper/model.dart';
import 'package:friends_app/views.dart/signup.dart';
import 'package:friends_app/services/database.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'helper/authenticate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required String title}) : super(key: key);

  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Authenticate(),
    );
  }
}

// class DatabaseHelper {
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//   static Database? _database;
//   DatabaseHelper._privateConstructor();

//   Future<Database> get database async {
//     if (database != null) return _database!;

//     _database = await _initDatabase('note.db');
//     return _database!;
//   }

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

//   Future<List> getUserModel() async {
//     Database db = await instance.database;
//     var usermodel = await db.query('usermodel', orderBy: 'name');
//     List<UserModel>? userList = (usermodel.isEmpty
//         ? usermodel.map((c) => UserModel.fromMap(c)).toList()
//         : []).cast<UserModel>();
//     return userList;
//   }
// }

// Future<int> add(UserModel) async {
//   Database db = await instance.database;
//   return await db.insert('usermodel', grocery.toMap());
// }
