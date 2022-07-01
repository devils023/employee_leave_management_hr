import 'package:flutter/material.dart';
import 'package:startup_namer/forgot_password.dart';
import 'package:startup_namer/login.dart';
import 'package:startup_namer/navbar.dart';
import 'package:startup_namer/register_here.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'admin.dart';
import 'admin_approve_reject.dart';
import 'admin_page.dart';
import 'leave_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: adminpage(),
    ); //
  }
}
