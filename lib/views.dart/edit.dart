import 'package:flutter/material.dart';
import 'package:friends_app/decorations/widget.dart';
import 'package:friends_app/services/database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:friends_app/views.dart/list.dart';

class EditFriend extends StatefulWidget {
  int userId;
  EditFriend({Key? key, required this.userId}) : super(key: key);
  @override
  State<EditFriend> createState() => _EditFriendState();
}

class _EditFriendState extends State<EditFriend> {
  final formKeys = GlobalKey<FormState>();

  TextEditingController nameTextEditingController = TextEditingController();

  TextEditingController emailTextEditingController = TextEditingController();

  TextEditingController mobileTextEditingController = TextEditingController();

  MyDatabase myDB = MyDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameTextEditingController,
              validator: (val) {
                return val!.isEmpty || val.length < 4
                    ? "Please provide a valid First Name"
                    : null;
              },
              decoration: textFieldInputDecoration("First Name"),
            ),
            TextFormField(
              controller: emailTextEditingController,
              validator: (val) {
                return RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(val!)
                    ? null
                    : "Enter correct email";
              },
              decoration: textFieldInputDecoration("email"),
            ),
            TextFormField(
              controller: mobileTextEditingController,
              validator: (val) {
                return val!.isEmpty || val.length < 4
                    ? "Please provide a valid Mobile Number"
                    : null;
              },
              decoration: textFieldInputDecoration("Mobile Number"),
            ),
            const SizedBox(height: 10),
            OutlineButton(
              onPressed: () async {
                myDB.addFriend(FriendsCompanion(
                    userId: drift.Value(widget.userId),
                    name: drift.Value(nameTextEditingController.text),
                    email: drift.Value(emailTextEditingController.text),
                    mobile: drift.Value(mobileTextEditingController.text)));
                List<Friend> myList = await myDB.getFriends(widget.userId);
                print(myList);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => List1(
                              userlist: myList,
                              userId: widget.userId,
                            )));
              },
              child: const Text('save', style: TextStyle(color: Colors.black)),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
