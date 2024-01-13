import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_11/MyRadioScreen.dart';
import 'package:university_11/MytabelForm.dart';
import 'package:university_11/MytabelFormTrain.dart';
import 'package:university_11/formstudentTabel.dart';
import 'package:university_11/tabelCom.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  String? dropdownValue = null;
  String? dropdownValueWeeks = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffF5F5F5)),
                  width: 330,
                  //color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // color: Colors.yellow,
                        //   margin: EdgeInsets.only(top: 5),
                        width: 150,
                        // height: 20,
                        // color: Colors.blue,+
                        child: DropdownButton<String>(
                          underline: Container(),
                          padding: EdgeInsets.only(left: 0),
                          hint: Text(
                            'Choose Company',
                          ),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                          alignment: Alignment.center,
                          onChanged: (String? newValue) {
                            setState(() {
                              if (newValue == "Nothing") {
                                dropdownValueWeeks = null;
                              } else {
                                dropdownValueWeeks = newValue!;
                              }
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "Harri",
                                ),
                              ),
                              value: "Harri",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "Asal Technologies",
                                ),
                              ),
                              value: "Asal Technologies",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "ITG",
                                ),
                              ),
                              value: "ITG",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "ProGineers",
                                ),
                              ),
                              value: "ProGineers",
                            ),
                          ],
                          value: dropdownValueWeeks,
                          icon: (dropdownValueWeeks != null)
                              ? Icon(
                                  Icons.workspaces_sharp,
                                  color: Colors.amber,
                                )
                              : Icon(Icons.workspaces),
                        ),
                      ),
                      Container(
                        //  margin: EdgeInsets.only(top: 10),
                        width: 140,
                        // height: 40,
                        // color: Colors.blue,+
                        child: DropdownButton<String>(
                          underline: Container(),
                          // padding: EdgeInsets.only(left: 0),
                          hint: Text(
                            'Group name',
                          ),

                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                          alignment: Alignment.center,
                          onChanged: (String? newValue) {
                            setState(() {
                              if (newValue == "Nothing") {
                                dropdownValue = null;
                              } else {
                                dropdownValue = newValue!;
                              }
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "Flutter Fall 23",
                                ),
                              ),
                              value: "FlutterFall23",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "React Fall 23",
                                ),
                              ),
                              value: "ReactFall23",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                width: 100,
                                child: Text(
                                  "Angular Fall 23",
                                ),
                              ),
                              value: "AngularFall23",
                            ),
                          ],
                          value: dropdownValue,
                          icon: (dropdownValue != null)
                              ? Icon(
                                  Icons.groups,
                                  color: Colors.amber,
                                )
                              : Icon(Icons.groups),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 280,
                  height: 500,
                  //color: Color.fromARGB(255, 1, 30, 92),
                  child: FormMyTable(),
                )
              ],
            ),
            Container(
              //color: Color(0xffCCCCFF),
              width: 830,
              height: 900,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                //  borderRadius: BorderRadius.circular(20),
                color: Color(0xffCCCCFF),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: 590,
                  height: 3000,
                  //    color: Color.fromARGB(255, 1, 30, 92),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Container(
                            margin: EdgeInsets.only(top: 20, right: 180),
                            child: Text(
                              "About Student:",
                              style: GoogleFonts.salsa(fontSize: 25),
                            ),
                          )),
                          Container(
                            height: 100,
                            width: 200,
                            margin: EdgeInsets.only(top: 20),
                            //   width: ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage("images/girl00.jpeg"),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      MyTableForm(),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Container(
                            margin: EdgeInsets.only(top: 20, right: 180),
                            child: Text(
                              "About Training:",
                              style: GoogleFonts.salsa(fontSize: 25),
                            ),
                          )),
                          Container(
                            height: 100,
                            width: 200,
                            margin: EdgeInsets.only(top: 20),
                            //   width: ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage("images/trainnn.jpeg"),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      MyTableFormTrain(),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Container(
                            margin: EdgeInsets.only(top: 20, right: 180),
                            child: Text(
                              "About Supervisor:",
                              style: GoogleFonts.salsa(fontSize: 25),
                            ),
                          )),
                          Container(
                            height: 100,
                            width: 200,
                            margin: EdgeInsets.only(top: 20),
                            //   width: ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage("images/job.jpeg"),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      MyTableFormCompTrain(),
                      Divider(),
                      MyRadioScreen()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
