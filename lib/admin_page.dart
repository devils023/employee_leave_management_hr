import 'dart:math';

import 'package:flutter/material.dart';

import 'nabbar_admin.dart';

class adminpage extends StatefulWidget {
  const adminpage({Key? key}) : super(key: key);

  @override
  State<adminpage> createState() => _adminpageState();
}

class _adminpageState extends State<adminpage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        drawer: Navbaradmin(),
        appBar: AppBar(
          backgroundColor: Color(0xff004795),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: screenSize.width,
                  padding: const EdgeInsets.symmetric(vertical: 30),
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
                  )),
            ],
          ),
        ));
  }
}
