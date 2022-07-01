import 'package:flutter/material.dart';
import 'package:startup_namer/nabbar_admin.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:intl/intl.dart';

import 'admin_leave_request_submitted.dart';
import 'leave_page.dart';

class adminleavepage extends StatefulWidget {
  const adminleavepage({Key? key}) : super(key: key);

  @override
  State<adminleavepage> createState() => _adminleavepageState();
}

class _adminleavepageState extends State<adminleavepage> {
  DateTime? leaveFrom;
  DateTime? leaveTo;
  late TextEditingController fromDateController;
  late TextEditingController tillDateController;

  @override
  void initState() {
    fromDateController = TextEditingController();
    tillDateController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Navbaradmin(),
        appBar: AppBar(
          backgroundColor: Color(0xff004795),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width: 700.0,
                    height: 200.0,
                    child: Card(
                      color: Color(0xffCCDFFF),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/ucclogo.png",
                            width: 150.0,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Employee Leave Management",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          // SizedBox(
                          //   height: 20.0,
                          // ),
                        ],
                      )),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 30.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          child: TextFormField(
                            readOnly: true,
                            controller: fromDateController,
                            onTap: () async {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2030),
                              ).then((value) {
                                // if(value!=null) {
                                setState(() {
                                  fromDateController.text = value == null
                                      ? ""
                                      : DateFormat("EEEE, yyyy - M - dd")
                                          .format(value);
                                  leaveFrom = value;
                                });
                                // }
                              });
                            },
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'From:',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: TextFormField(
                            readOnly: true,
                            controller: tillDateController,
                            onTap: () async {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2030),
                              ).then((value) {
                                // if(value!=null) {
                                setState(() {
                                  tillDateController.text = value == null
                                      ? ""
                                      : DateFormat("EEEE, yyyy - M - dd")
                                          .format(value);
                                  leaveTo = value;
                                });
                                // }
                              });
                            },
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Till:',
                            ),
                          ),
                        ),
                        // TextFormField(
                        //   decoration: const InputDecoration(
                        //     border: UnderlineInputBorder(),
                        //     labelText: 'Reason For Leave',
                        //   ),
                        // ),
                        SizedBox(
                          height: 60,
                          child: Column(
                            children: [
                              TextDropdownFormField(
                                options: [
                                  "Floating Leave",
                                  "Sick Leave",
                                  "Paternity Leave",
                                  "Mourning Leave",
                                  "Marriage Leave",
                                  "Maternity Leave"
                                ],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    suffixIcon: Icon(Icons.arrow_back_ios_new),
                                    labelText: "Types of Leave"),
                                dropdownHeight: 300,
                              ),
                              // SizedBox(
                              //   height: 16,
                              // ),
                              // DropdownFormField<Map<String, dynamic>>(
                              //   onEmptyActionPressed: () async {},
                              //   decoration: InputDecoration(
                              //       border: OutlineInputBorder(),
                              //       suffixIcon: Icon(Icons.arrow_drop_down),
                              //       labelText: "Access"),
                              //   onSaved: (dynamic str) {},
                              //   onChanged: (dynamic str) {},
                              //   validator: (dynamic str) {},
                              //   displayItemFn: (dynamic item) => Text(
                              //     (item ?? {})['name'] ?? '',
                              //     style: TextStyle(fontSize: 16),
                              //   ),
                              //   findFn: (dynamic str) async => _roles,
                              //   selectedFn: (dynamic item1, dynamic item2) {
                              //     if (item1 != null && item2 != null) {
                              //       return item1['name'] == item2['name'];
                              //     }
                              //     return false;
                              //   },
                              //   filterFn: (dynamic item, str) =>
                              //       item['name']
                              //           .toLowerCase()
                              //           .indexOf(str.toLowerCase()) >=
                              //       0,
                              //   dropdownItemFn: (dynamic item,
                              //           int position,
                              //           bool focused,
                              //           bool selected,
                              //           Function() onTap) =>
                              //       ListTile(
                              //     title: Text(item['name']),
                              //     subtitle: Text(
                              //       item['desc'] ?? '',
                              //     ),
                              //     tileColor: focused
                              //         ? Color.fromARGB(20, 0, 0, 0)
                              //         : Colors.transparent,
                              //     onTap: onTap,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xff004795)),
                                        minimumSize: MaterialStateProperty.all(
                                            const Size(330, 60))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  adminrequestSubmitted()));
                                    },
                                    child: Text("Apply for Leave")),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 12.0),
              ],
            ),
          ),
        )));
  }
}
