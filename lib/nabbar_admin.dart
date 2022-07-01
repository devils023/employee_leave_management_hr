import 'dart:io';

import 'package:flutter/material.dart';

import 'about_us.dart';
import 'admin_apply_for_leave.dart';
import 'admin_approve_reject.dart';
import 'hr_policy.dart';
import 'login.dart';

class Navbaradmin extends StatelessWidget {
  const Navbaradmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        // padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: 130,
                  color: Color(0xffCCDFFF),
                  child: Image.asset(
                    "assets/images/logonew.png",
                    width: double.infinity,
                    fit: BoxFit.contain,
                    // Container(
                    //   width: 90,
                    //   height: 150,
                    //   color: Colors.white,
                    //   child: CircleAvatar(
                    //       child: ClipOval(
                    //         child: Image.asset(
                    //           "assets/images/logonew.png",
                    //           fit: BoxFit.fill,
                    //           width: double.infinity,
                    //           height:double.infinity,
                    //         ),
                    //     ),
                    //   ),
                    // ),
                    //       height: 120,
                  )),
            ],
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Log In'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyLogin())),
          ),

          ListTile(
            leading: Icon(Icons.person_pin_outlined),
            title: Text('Apply for leave'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (contect) => adminleavepage(),
              ),
            ),
            //onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Employee On Leave'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => approve_reject()),
            ),
          ),

          ListTile(
            leading: Icon(Icons.book),
            title: Text('About Us'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AboutUs()),
            ),
          ),

          ListTile(
            leading: Icon(Icons.share),
            title: Text('Hr Policy'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (contect) => HrPolicy(),
              ),
            ),
            //onTap: () => null,
          ),

          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text('Settings'),
          //   onTap: () => null,
          // ),
          //
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => exit(0),
          ),
        ],
      ),
    );
  }
}
