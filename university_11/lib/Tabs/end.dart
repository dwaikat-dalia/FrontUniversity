import 'package:flutter/material.dart';
import 'package:university_11/charts/linechart.dart';
import 'package:university_11/buttonico.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:university_11/ratings.dart';
import 'package:university_11/tabelCompany.dart';
import 'package:university_11/dat.dart';

class end extends StatefulWidget {
  const end({super.key});

  @override
  _HighlightsState createState() => _HighlightsState();
}

class _HighlightsState extends State<end> {
  String? dropdownValue = null;

  String? contentPost =
      "Happy HR Professional Day! 💙 \nBehind every successful organization lies an HR team dedicated to shaping company culture, fostering talent, managing compliance, and so much more. 🚀\n\n\nWe're privileged to partner with so many exceptional HR leaders across the globe, who passionately strive to make the service industry a better place - especially for frontline workers.\n We couldn't help but share some of their wisdom on this special day! 🎉⤵\n Events season is truly upon us! ⏳";
  String? post2 =
      "ASAL Technologies is currently looking for a Product Validation Engineer with a strong background in developing high-quality, object-oriented product validation of AI/ML.If you are interested in becoming a part of the ASAL family, please take a moment to review the job description below and Apply through the following link:https://lnkd.in/dabucq9c";
  String? post3 =
      "Interested in stepping into the exciting world of Customer Success Management?We're seeking an experienced B2B Customer Success Manager to be part of our team! Explore this opportunity today on our website: https://lnkd.in/dB2PYEbC";
  String? dropdownValueWeeks = null;
  bool? isChecked = false;
  bool stateOnline = false;
  bool isTextFieldVisible = false;
  String? dropdownValueSemester = "Fall";
  bool stateUniv = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 600,
            height: 750,
            //color: Color(0xffF5F5F5),
            // color: Colors.yellow,
            /* decoration: BoxDecoration(
                border: Border.all(
              width: 3,
              color: Colors.amber,
            )),*/
            child: Row(
              children: [
                Container(
                  width: 590,
                  height: 735,
                  //color: Colors.red,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 545,
                          height: 50,
                          padding: EdgeInsets.only(left: 20, bottom: 10),
                          decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(60)),
                          child: Container(
                            // width: 411,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                          dropdownValueWeeks = newValue!;
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
                                  padding: EdgeInsets.only(left: 20),
                                  // color: Colors.yellow,
                                  margin: EdgeInsets.only(top: 10),
                                  //  width: 160,
                                  height: 50,
                                  // color: Colors.blue,+
                                  child: DropdownButton<String>(
                                    underline: Container(),
                                    // padding: EdgeInsets.only(left: 0),
                                    hint: Text(
                                      'Semester',
                                    ),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13),
                                    // alignment: Alignment.center,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        if (newValue == "Nothing") {
                                          dropdownValueSemester = null;
                                        } else {
                                          dropdownValueSemester = newValue!;
                                        }
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                        child: Container(
                                          width: 50,
                                          child: Text(
                                            "Fall",
                                          ),
                                        ),
                                        value: "Fall",
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          width: 50,
                                          child: Text(
                                            "Spring",
                                          ),
                                        ),
                                        value: "Spring",
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          width: 50,
                                          child: Text(
                                            "Summer",
                                          ),
                                        ),
                                        value: "Summer",
                                      ),
                                    ],
                                    value: dropdownValueSemester,
                                    icon: (dropdownValueSemester != null)
                                        ? Icon(
                                            Icons.bookmark_added_rounded,
                                            color: Colors.amber,
                                          )
                                        : Icon(Icons.bookmark_added_rounded),
                                  ),
                                ),
                                YearPickerWidget(),
                                searchic()
                              ],
                            ),
                          )),
                      Container(
                        width: 550,
                        height: 500,
                        //color: Color.fromARGB(255, 1, 30, 92),
                        child: MyTable(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 550,
            height: 755,
            //   color: Colors.red,
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
                                    image: AssetImage("images/Harri.jpeg"))),
                            margin:
                                EdgeInsets.only(left: 5, top: 10, right: 20),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.people,
                                        size: 30,
                                        color: Color(0xff0087BD),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Number of students",
                                              style: GoogleFonts.salsa(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Color(0xff007BA7)),
                                            ),
                                          ),
                                          Container(
                                            //   color: Colors.yellow,
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text(
                                              "30",
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
                                  // color: Colors.pink,
                                  margin: EdgeInsets.only(left: 10, top: 20),
                                  //  padding: EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "View students name",
                                              style: GoogleFonts.salsa(
                                                  fontWeight: FontWeight.bold,
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
                                Container(
                                  //  color: Colors.pink,
                                  margin: EdgeInsets.only(
                                      left: 10, top: 3, bottom: 3, right: 35),
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.alarm_sharp,
                                      size: 30,
                                      color: Color(0xff0087BD),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Number of hours",
                                            style: GoogleFonts.salsa(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Color(0xff007BA7)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 4),
                                          child: Text(
                                            "320",
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.lock_open,
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.lock,
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
                                            "30/12/2023",
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
                Column(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Feedback Students:",
                        style: GoogleFonts.salsa(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1F305E),
                            fontSize: 25),
                      ),
                    ),
                    Container(
                      width: 620,
                      padding: EdgeInsets.only(top: 20),
                      //  margin: EdgeInsets.only(left: 20),
                      height: 235,
                      decoration: BoxDecoration(
                          color: Color(0xffCCCCFF),
                          borderRadius: BorderRadius.circular(30)),
                      child: ratingReviews(),
                    ),
                  ],
                )
              ],
            ),
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

  void _LearnshowCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: 400,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'As a student ,expected :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 1, 30, 92),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _buildTakeaway('Strong Foundation in Flutter',
                      'A solid understanding of the Flutter framework, including its architecture and key components.'),
                  _buildTakeaway('UI/UX Design Principles',
                      'Ability to design and implement visually appealing user interfaces using Flutter\'s widget system.'),
                  _buildTakeaway('State Management Techniques',
                      'Proficiency in various state management approaches, such as setState, Provider, Bloc, and Riverpod, enabling you to manage and maintain application state effectively.'),
                  _buildTakeaway('Navigation and Routing',
                      'Capability to implement navigation and routing within Flutter applications, allowing users to navigate seamlessly between different screens.'),
                  _buildTakeaway('Integration with APIs',
                      'Experience in integrating Flutter applications with external APIs, enabling communication with servers to fetch and send data.'),
                  _buildTakeaway('Persistence and Storage',
                      'Knowledge of local data storage options, such as SQLite and shared preferences, for efficient data persistence in mobile applications.'),
                  _buildTakeaway('Authentication and Authorization',
                      'Implementation of secure user authentication and authorization mechanisms to protect user data and ensure a safe app environment.'),
                  _buildTakeaway('Testing and Debugging',
                      'Proficiency in writing unit tests and conducting effective debugging, ensuring the reliability and stability of your Flutter applications.'),
                  _buildTakeaway('Optimizing Performance',
                      'Techniques for optimizing app performance, including minimizing app size, improving startup times, and optimizing UI rendering.'),
                  _buildTakeaway('Deployment and App Store Submission',
                      'Understanding of the app deployment process, including building and packaging apps for both Android and iOS platforms. Knowledge of the submission process for app stores, ensuring your apps are ready for distribution.'),
                  _buildTakeaway('Continuous Learning and Community Engagement',
                      'Cultivation of a growth mindset, encouraging continuous learning and staying updated with the latest Flutter and Dart developments. Active participation in the Flutter community, leveraging resources like forums, blogs, and conferences to enhance your skills.'),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 30, 92),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTakeaway(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: Color.fromARGB(255, 1, 30, 92),
          ),
        ),
        SizedBox(height: 4.0),
        Text(description,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // fontSize: 18.0,
              // color: Color.fromARGB(255, 1, 30, 92),
            )),
        SizedBox(height: 10.0),
      ],
    );
  }
}
