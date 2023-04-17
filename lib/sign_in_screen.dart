// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  static var auth = FirebaseAuth.instance;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool agree = false;
  final _formkey = GlobalKey<FormState>();

  signIn(BuildContext context) {
    if (_formkey.currentState!.validate() && agree) {
      Navigator.pushNamed(context, '/dashboard');
    }
  }

  Widget build(BuildContext context) {
    String email = "", password = "", name = "", confirmPassword = "";
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
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
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
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Confirm Password',
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
                                        return "please confirm your password";
                                      confirmPassword = value.toString();
                                      return null;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 178, 178, 178)),
                                        hintText: "Confirm Your Password"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Referral Code',
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
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 178, 178, 178)),
                                        hintText: "Enter Referral Code"),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.lightBlue),
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value!;
                                          });
                                        }),
                                    Text(
                                      'I agree to Terms & conditions of Wallet',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 5, top: 5),
                                    child: Text(
                                      'Please agree to the terms and conditions',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            )),
                        ElevatedButton(
                          onPressed: () {
                            signIn(context);
                          },
                          child: Text("Sign In"),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/login');
                                },
                                child: Text(
                                  'Log In',
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
