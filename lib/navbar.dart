import 'dart:io';
import 'package:flutter/material.dart';
import 'package:startup_namer/about_us.dart';
import 'package:startup_namer/dashboard.dart';
import 'package:startup_namer/hr_policy.dart';
import 'package:startup_namer/login.dart';

class NavBar extends StatelessWidget {
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
            leading: Icon(Icons.person),
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
