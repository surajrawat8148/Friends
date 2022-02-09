import 'package:flutter/material.dart';
import 'package:friends_app/decorations/custom_painter.dart';
import 'package:friends_app/decorations/widget.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  const SignIn(this.toggle);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKeys = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

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
                          validator: (val) {
                            return val!.isEmpty || val.length < 4
                                ? "Please provide a valid Username"
                                : null;
                          },
                          decoration: textFieldInputDecoration("Mobile Number"),
                        ),
                        TextFormField(
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
                      // ignore: todo
                      //TODO
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
                        "Sign In",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have account? ",
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.toggle();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text(
                            "Signin now",
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
