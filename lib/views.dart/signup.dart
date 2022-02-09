import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:friends_app/decorations/custom_painter.dart';
import 'package:friends_app/decorations/widget.dart';
import 'package:friends_app/services/database.dart';

class SignUp extends StatefulWidget {
  late final Function toggle;
  SignUp(this.toggle);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKeys = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController mobileTextEditingController = TextEditingController();

  SignMeUp() {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // LogoPainter(),
          Container(
            height: MediaQuery.of(context).size.height - 130,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: formKeys,
                    child: Column(
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
                          validator: (val) {
                            return val!.isEmpty || val.length < 4
                                ? "Please provide a valid Last Name"
                                : null;
                          },
                          decoration: textFieldInputDecoration("Last Name"),
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
                        TextFormField(
                          controller: passwordTextEditingController,
                          obscureText: true,
                          validator: (val) {
                            return RegExp(r'^.{6,}$').hasMatch(val!)
                                ? null
                                : "Please provide password 6+ characters";
                          },
                          decoration: textFieldInputDecoration("password"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      MyDatabase myDB = MyDatabase();
                      myDB.addUsers(UsersCompanion(
                          name: drift.Value(nameTextEditingController.text),
                          email: drift.Value(emailTextEditingController.text),
                          password:
                              drift.Value(passwordTextEditingController.text),
                          mobile:
                              drift.Value(mobileTextEditingController.text)));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xff007EF4), Color(0xff2A75BC)]),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Text(
                        "Sign Up",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account? ",
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.toggle();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text(
                            "SignIn now",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
