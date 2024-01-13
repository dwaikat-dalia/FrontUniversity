import 'package:flutter/material.dart';
import 'package:university_11/charts/linechart.dart';
import 'package:university_11/buttonico.dart';
import 'package:university_11/tabelCompany.dart';
import 'package:google_fonts/google_fonts.dart';

class Highlights extends StatefulWidget {
  const Highlights({super.key});

  @override
  _HighlightsState createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  bool? isChecked = false;
  bool stateOnline = false;
  bool isTextFieldVisible = false;
  String? dropdownValue = null;
  String? dropdownValueWeeks = null;
  bool stateUniv = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 700,
      child: Column(
        children: [
          /* Container(
              padding: EdgeInsets.only(left: 10),
              width: 1200,
              //  color: Colors.grey.shade50,
              child: Text(
                "A glance at effective workouts- for university training:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                    fontSize: 18),
              )),*/
          Row(
            children: [
              /*  */
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 570,
                //height: 500,
                // color: Colors.yellow,
                /*decoration: BoxDecoration(
                    border: Border.all(
                  width: 3,
                  color: Colors.amber,
                )
                )*/
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 550,

                      //   height: 295,
                      //  color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              width: 560,
                              height: 50,
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.only(bottom: 5, left: 20),
                              decoration: BoxDecoration(
                                  color: Color(0xffF5F5F5),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Container(
                                // width: 411,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          // color: Colors.yellow,
                                          margin: EdgeInsets.only(top: 10),
                                          //  width: 160,
                                          height: 50,
                                          // color: Colors.blue,+
                                          child: DropdownButton<String>(
                                            underline: Container(),
                                            padding: EdgeInsets.only(left: 0),
                                            hint: Text(
                                              'Location',
                                            ),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 13),
                                            alignment: Alignment.center,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                if (newValue == "Nothing") {
                                                  dropdownValueWeeks = null;
                                                } else {
                                                  dropdownValueWeeks =
                                                      newValue!;
                                                }
                                              });
                                            },
                                            items: [
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Nablus",
                                                  ),
                                                ),
                                                value: "Nablus",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Ramallah",
                                                  ),
                                                ),
                                                value: "Ramallah",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Jenin",
                                                  ),
                                                ),
                                                value: "Jenin",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Tulkarm",
                                                  ),
                                                ),
                                                value: "Tulkarm",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Hebron",
                                                  ),
                                                ),
                                                value: "Hebron",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Bethlehem",
                                                  ),
                                                ),
                                                value: "Bethlehem",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Jerusalem",
                                                  ),
                                                ),
                                                value: "Jerusalem",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Outside Palestine",
                                                  ),
                                                ),
                                                value: "Outside Palestine",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Nothing",
                                                  ),
                                                ),
                                                value: "Nothing",
                                              )
                                            ],
                                            value: dropdownValueWeeks,
                                            icon: (dropdownValueWeeks != null)
                                                ? Icon(
                                                    Icons.location_on,
                                                    color: Colors.amber,
                                                  )
                                                : Icon(Icons.location_on),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          //  width: 160,
                                          height: 50,
                                          // color: Colors.blue,+
                                          child: DropdownButton<String>(
                                            underline: Container(),
                                            // padding: EdgeInsets.only(left: 0),
                                            hint: Text(
                                              'Framework',
                                            ),

                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 13),
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
                                                  width: 80,
                                                  child: Text(
                                                    "Flutter",
                                                  ),
                                                ),
                                                value: "Flutter",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "React",
                                                  ),
                                                ),
                                                value: "React",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Angular",
                                                  ),
                                                ),
                                                value: "Angular",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "VueJs",
                                                  ),
                                                ),
                                                value: "VueJs",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Svelte",
                                                  ),
                                                ),
                                                value: "Svelte",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "jQuery",
                                                  ),
                                                ),
                                                value: "jQuery",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Backbone.js",
                                                  ),
                                                ),
                                                value: "Backbone.js",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  child: Text(
                                                    "JavaScript",
                                                  ),
                                                ),
                                                value: "JavaScript",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Django",
                                                  ),
                                                ),
                                                value: "Django",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "ExpressJS",
                                                  ),
                                                ),
                                                value: "ExpressJS",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Laravel",
                                                  ),
                                                ),
                                                value: "Laravel",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "ASP .NET Core",
                                                  ),
                                                ),
                                                value: "ASP .NET Core",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Spring Boot",
                                                  ),
                                                ),
                                                value: "Spring Boot",
                                              ),
                                              DropdownMenuItem(
                                                child: Container(
                                                  width: 80,
                                                  child: Text(
                                                    "Nothing",
                                                  ),
                                                ),
                                                value: "Nothing",
                                              ),
                                            ],
                                            value: dropdownValue,
                                            icon: (dropdownValue != null)
                                                ? Icon(
                                                    Icons.computer,
                                                    color: Colors.amber,
                                                  )
                                                : Icon(Icons.computer),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Tooltip(
                                              // padding: EdgeInsets.all(55),
                                              // margin:
                                              //    EdgeInsets.only(bottom: 65),
                                              message: "Is it online?",
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    stateOnline = !stateOnline;
                                                  });
                                                },
                                                icon: (stateOnline)
                                                    ? Icon(
                                                        Icons.videocam,
                                                        size: 30,
                                                        color: Colors.amber,
                                                      )
                                                    : Icon(
                                                        size: 30,
                                                        Icons.videocam_off,
                                                        color:
                                                            Color(0xff555555),
                                                      ),
                                              ),
                                            ),
                                          ],
                                        )),
                                    searchic()
                                  ],
                                ),
                              )),
                          Container(
                            width: 590,
                            height: 440,
                            //    color: Color.fromARGB(255, 1, 30, 92),
                            child: MyTable(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 600,
                height: 590,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      width: 562,
                      height: 295,
                      margin: EdgeInsets.only(bottom: 10),
                      color: Color(0xffF5F5F5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage("images/Harri.jpeg"))),
                                margin: EdgeInsets.only(
                                    left: 5, top: 10, right: 20),
                                width: 70,
                                height: 70,
                                /*child: Image(
                                      image: AssetImage("images/Harri.jpeg"))*/
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Harri",
                                  //tektur
                                  //lemon
                                  style: GoogleFonts.salsa(
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                      color: Color(0xff007BA7)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: 540,
                                  // color: Colors.red,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Brief summary ",
                                    style: GoogleFonts.salsa(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xff0087BD)),
                                  )),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      //  color: Colors.pink,
                                      margin: EdgeInsets.only(
                                          left: 10, top: 3, bottom: 3),
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.people,
                                            size: 30,
                                            color: Color(0xff0087BD),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Number of students",
                                                  style: GoogleFonts.salsa(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13,
                                                      color: Color(0xff007BA7)),
                                                ),
                                              ),
                                              Container(
                                                //   color: Colors.yellow,
                                                margin:
                                                    EdgeInsets.only(left: 4),
                                                child: Text(
                                                  "30",
                                                  style: GoogleFonts.salsa(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Color(0xff0087BD)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.pink,
                                      margin:
                                          EdgeInsets.only(left: 10, top: 20),
                                      //  padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "View students name",
                                                  style: GoogleFonts.salsa(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13,
                                                      color: Color(0xff007BA7)),
                                                ),
                                              ),
                                              Container(
                                                //color: Colors.yellow,
                                                child: IconButton(
                                                  onPressed: () {
                                                    _showCustomDialog(context);
                                                  },
                                                  icon: Icon(
                                                      size: 30,
                                                      Icons.open_in_browser,
                                                      color: Color(0xff0087BD)),
                                                ),
                                              ),
                                              /*           Container(
                                                margin: EdgeInsets.only(left: 4),
                                                child: Text(
                                                  "30",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Color(0xff0087BD)),
                                                ),
                                              ),
                                  */
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    //  color: Colors.pink,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 3, bottom: 3, right: 35),
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.flag,
                                          size: 30,
                                          color: Color(0xff0087BD),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                "Training about",
                                                style: GoogleFonts.salsa(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: Color(0xff007BA7)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "Flutter",
                                                style: GoogleFonts.salsa(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Color(0xff0087BD)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //  color: Colors.pink,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 3, bottom: 3, right: 45),
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.access_alarms_outlined,
                                          size: 30,
                                          color: Color(0xff0087BD),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                "Start",
                                                style: GoogleFonts.salsa(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: Color(0xff007BA7)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1/9/2023",
                                                style: GoogleFonts.salsa(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Color(0xff0087BD)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //  color: Colors.pink,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 3, bottom: 3),
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.alarm_off,
                                          size: 30,
                                          color: Color(0xff0087BD),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Text(
                                                "End",
                                                style: GoogleFonts.salsa(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: Color(0xff007BA7)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "Not yet",
                                                style: GoogleFonts.salsa(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Color(0xff0087BD)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 560,
                      height: 240,
                      // color: Color(0xffF5F5F5),
                      child: ColumnChartSample(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    return _HighlightsState();
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Students :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 1, 30, 92),
            ),
          ),
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                _buildListRow('Omar Khaled', "images/studentBoy.jpeg"),
                _buildListRow('Amal Shadi', "images/studentGirl.jpeg"),
                _buildListRow('Rama Qasem', "images/studentGirl.jpeg"),
                _buildListRow('Omar Yamen', "images/studentBoy.jpeg"),
                _buildListRow('Omar Khaled', "images/studentBoy.jpeg"),
                _buildListRow('Amal Shadi', "images/studentGirl.jpeg"),
                _buildListRow('Rama Qasem', "images/studentGirl.jpeg"),
                _buildListRow('Omar Yamen', "images/studentBoy.jpeg"),
                _buildListRow('Omar Khaled', "images/studentBoy.jpeg"),
                _buildListRow('Amal Shadi', "images/studentGirl.jpeg"),
                _buildListRow('Rama Qasem', "images/studentGirl.jpeg"),
                _buildListRow('Omar Yamen', "images/studentBoy.jpeg"),
                _buildListRow('Omar Khaled', "images/studentBoy.jpeg"),
                _buildListRow('Amal Shadi', "images/studentGirl.jpeg"),
                _buildListRow('Rama Qasem', "images/studentGirl.jpeg"),
                _buildListRow('Omar Yamen', "images/studentBoy.jpeg"),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildListRow(String text, String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 30, 92),
                fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
