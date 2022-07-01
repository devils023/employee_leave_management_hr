import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/dashboard.dart';
import 'package:startup_namer/forgot_password.dart';
import 'package:startup_namer/navbar.dart';
import 'package:startup_namer/register.dart';
import 'package:startup_namer/register_here.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validate() {
    //YAHA API CALL GARNU PARCHA//
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: screenSize.width,
                padding: const EdgeInsets.symmetric(vertical: 90),
                color: const Color(0xffCCDFFF),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/ucclogo.png",
                      width: min(130, screenSize.width * 0.5),
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Employee Leave Management',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Container(
                        child: const Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email/Mobile",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null) {
                          return "this is required.";
                        } else {
                          return value.length <= 9
                              ? "Length must be greater than 9"
                              : null;
                        }
                      },
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: TextStyle(),
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null) {
                          return "this is required.";
                        } else {
                          return value.length <= 9
                              ? "Length must be greater than 9"
                              : null;
                        }
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              // decoration: TextDecoration.underline,
                              color: Color(0xff4c505b),
                              fontSize: 16,
                            ),
                          )),
                    ),
                    const SizedBox(height: 0),
                    Center(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff004795)),
                              minimumSize: MaterialStateProperty.all(
                                  const Size(400, 50))),
                          onPressed: () {
                            validate();
                          },
                          child: Text("Log In")),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       'Sign in',
                    //       style: TextStyle(
                    //           fontSize: 27, fontWeight: FontWeight.w700),
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     CircleAvatar(
                    //       radius: 30,
                    //       backgroundColor: Color(0xff4c505b),
                    //       child: IconButton(
                    //           color: Colors.white,
                    //           onPressed: () {
                    //             validate();
                    //           },
                    //           icon: Icon(
                    //             Icons.arrow_forward,
                    //           )),
                    //     )
                    //   ],
                    // ),
                    const SizedBox(height: 40),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text(
                          'Register Here',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              // decoration: TextDecoration.underline,
                              color: Color(0xff4c505b),
                              fontSize: 18),
                        ),
                        style: ButtonStyle(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
