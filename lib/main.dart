import 'package:flutter/material.dart';
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
