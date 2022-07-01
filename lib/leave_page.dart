import 'dart:math';
import 'package:flutter/material.dart';
import 'package:startup_namer/dashboard.dart';
import 'navbar.dart';

class requestsubmitted extends StatefulWidget {
  const requestsubmitted({Key? key}) : super(key: key);

  @override
  State<requestsubmitted> createState() => _requestsubmittedState();
}

class _requestsubmittedState extends State<requestsubmitted> {
  @override
  Widget build(BuildContext context) {
    final dynamic screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xff004795),
      ),
      body: SingleChildScrollView(
        child: (Column(
          children: [
            Container(
              width: screenSize.width,
              padding: const EdgeInsets.symmetric(vertical: 80),
              color: Color(0xffCCDFFF),
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Your Request For Leave Is Submitteed",
              style: TextStyle(
                  color: Color(0xFF242424),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Thank You !!!",
              style: TextStyle(
                  color:Color(0xFF242424),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xff004795)),
                      minimumSize:
                      MaterialStateProperty.all(const Size(400, 50))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dashboard()));
                  },
                  child: Text("Close")),
            ),


          ],
        )),
      ),
    );
  }
}
