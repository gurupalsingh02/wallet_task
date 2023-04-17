// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  logIn() {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, '/dashboard');
    }
  }

  Widget build(BuildContext context) {
    String email = "", password = "";
    return SafeArea(
      child: SingleChildScrollView(
        child: Material(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    scale: 1.0,
                    'assets/images/logo.png',
                    width: 80,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 52, 50, 50),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 30),
                    child: Column(
                      children: [
                        Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    validator: (value) {
                                      if (value == null || value.isEmpty)
                                        return "email can not be empty";
                                      email = value.toString();
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 178, 178, 178)),
                                        hintText: "Enter Your Email"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Password',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    validator: (value) {
                                      if (value == null || value.isEmpty)
                                        return "password can not be empty";
                                      password = value.toString();
                                      return null;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 178, 178, 178)),
                                        hintText: "Enter Your Password"),
                                  ),
                                )
                              ],
                            )),
                        ElevatedButton(
                          onPressed: () {
                            logIn();
                          },
                          child: Text("Log In"),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sign_in');
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.lightBlue),
                                ))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/google.png',
                                  height: 35,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                SvgPicture.asset('assets/images/facebook.svg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/dog_login.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
