import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';

import 'package:university_11/Tabs/forms.dart';
//import 'package:university_11/Tabs/forms.dart';
import 'package:university_11/Tabs/overview.dart';
import 'package:university_11/Tabs/highlights.dart';
import 'package:university_11/Tabs/trainingPrograms.dart';
import 'package:university_11/Tabs/tracking.dart';
import 'package:university_11/Tabs/studentReviw.dart';
import 'package:university_11/Tabs/end.dart';
import 'package:university_11/msg.dart';
/*
void main() {
  runApp(MyHomeApp());
}*/

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTabs(),
    );
  }
}

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool active = true;
  int _selectedIndex = 6;
  int _notificationCount = 32; // Set the number of notifications here
  int _traineCount = 25; // Set the number of notifications here
  int _msgCount = 10; // Set the number of notifications here

  @override
  void initState() {
    super.initState();
    // _tabController.index = 0;
    // Initialize the TabController with 6 tabs and set the initial index to 5
    _tabController = TabController(length: 7, vsync: this, initialIndex: 6);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
                width: 60,
                height: 60,
                child: Image(image: AssetImage("images/TLp.png"))),
            Text(
              'TRAINLINK',
              style: GoogleFonts.salsa(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92)),
            ),
          ],
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.grey.shade200),
            child: IconButton(
              icon: Icon(
                Icons.post_add,
                color: Color.fromARGB(255, 1, 30, 92),
                size: 25,
              ),
              onPressed: () {
                // _showCustomDialog(context);
                // Handle notifications button press
              },
            ),
          ),
          Container(
            child: IconButton(
              icon: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.amber,
                ),
                position: badges.BadgePosition.topEnd(top: -5),
                badgeContent: Text(
                  _msgCount.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 30, 92),
                    fontSize: 12,
                  ),
                ),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade200),
                  child: Icon(
                    Icons.chat,
                    color: Color.fromARGB(255, 1, 30, 92),
                    size: 25,
                  ),
                ),
              ),
              onPressed: () {
                _showCustomDialog(context);
                // Handle notifications button press
              },
            ),
          ),
          Container(
            child: IconButton(
              icon: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.amber,
                ),
                position: badges.BadgePosition.topEnd(top: -5),
                badgeContent: Text(
                  _notificationCount.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 30, 92),
                    fontSize: 12,
                  ),
                ),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade200),
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 1, 30, 92),
                    size: 30,
                  ),
                ),
              ),
              onPressed: () {
                _NotishowCustomDialog(context);
                // Handle notifications button press
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 40),
            child: IconButton(
              icon: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.amber,
                ),
                position: badges.BadgePosition.topEnd(top: -5),
                badgeContent: Text(
                  _traineCount.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 30, 92),
                    fontSize: 12,
                  ),
                ),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade200),
                  child: Icon(
                    Icons.school,
                    color: Color.fromARGB(255, 1, 30, 92),
                    size: 30,
                  ),
                ),
              ),
              onPressed: () {
                _TrainNotishowCustomDialog(context);
                // Handle notifications button press
              },
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          // Vertical Tab Bar
          Container(
            width: 180,
            height: 600,
            color: Color(0xff5D8AA8),
            child: RotatedBox(
              quarterTurns: -1,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab, // تحديد حجم المؤشر

                indicatorColor: Color(0xff003262),
                indicatorWeight:
                    5.0, // Set the thickness of the active tab indicator
                labelColor:
                    Color(0xff003262), // Set text color for the active tab
                unselectedLabelColor: Color(0xffF0F8FF),
                controller: _tabController,
                tabs: [
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.book,
                                color: _selectedIndex == 0
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Forms',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: _selectedIndex == 0
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.hourglass_bottom_rounded,
                                color: _selectedIndex == 1
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'End of training',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: _selectedIndex == 1
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.manage_accounts,
                                color: _selectedIndex == 2
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Student Review',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: _selectedIndex == 2
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.grading,
                                color: _selectedIndex == 3
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Report Tracking',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: _selectedIndex == 3
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.dashboard_customize,
                                color: _selectedIndex == 4
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Company Manage',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: _selectedIndex == 4
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.equalizer,
                                color: _selectedIndex == 5
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Highlights',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: _selectedIndex == 5
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    //   color: Colors.red,
                    child: Tab(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.language,
                                color: _selectedIndex == 6
                                    ? Color(0xff003262)
                                    : Color(0xffF0F8FF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Overview',
                                style: GoogleFonts.salsa(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: _selectedIndex == 6
                                      ? Color(0xff003262)
                                      : Color(0xffF0F8FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Content Area for the vertical tabs
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Forms()),
                Center(child: end()),
                Center(child: studentReview()),
                Center(child: tracking()),
                Center(child: trainingProgram()),
                Center(child: Highlights()),
                Center(child: overview()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the TabController when the widget is disposed
    _tabController.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  /*Widget NotiBud() {
    return;
  }*/

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 1, 30, 92),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 550,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      _buildListRow('Omar Khaled', "images/studentBoy.jpeg",
                          "1 hours ago"),
                      _buildListRow('Amal Shadi', "images/studentGirl.jpeg",
                          "1 hours ago"),
                      _buildListRow('Rama Qasem', "images/studentGirl.jpeg",
                          "2 hours ago"),
                      _buildListRow('Omar Yamen', "images/studentBoy.jpeg",
                          "4 hours ago"),
                      _buildListRow('Walaa Qasem', "images/studentGirl.jpeg",
                          "2 hours ago"),
                      _buildListRow('Basem Yamen', "images/studentBoy.jpeg",
                          "4 hours ago"),
                      _buildListRow('Harri', "images/Harri.jpeg", "5/12/2023"),
                      _buildListRow(
                          'Asal Technology', "images/asal.jpeg", "5/12/2023"),
                      _buildListRow('Rama Qasem', "images/studentGirl.jpeg",
                          "2 hours ago"),
                      _buildListRow('Omar Yamen', "images/studentBoy.jpeg",
                          "4 hours ago"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildListRow(String text, String image, String time) {
    return MaterialButton(
      onPressed: () {
        // Navigator.of(context).pop();
        _ContentMesgDialog(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(image: AssetImage(image))),
              ),
              SizedBox(width: 5.0),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                    fontSize: 18.0),
              ),
              SizedBox(width: 89.0),
              Container(
                child: Text(time),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _ContentMesgDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 1, 30, 92),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Container(width: 400, height: 550, child: msg()),
            ],
          ),
        );
      },
    );
  }

  void _NotishowCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 1, 30, 92),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 550,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      _buildListRowNoti(
                          'Harri',
                          "images/Harri.jpeg",
                          "1 hours ago",
                          "Sent a request for approval of the report.. "),
                      _buildListRowNoti(
                          'Harri',
                          "images/Harri.jpeg",
                          "1 hours ago",
                          "Sent a request for approval of the report.. "),
                      _buildListRowNoti(
                          'Asal Technology',
                          "images/asal.jpeg",
                          "5/12/2023",
                          "Sent a request for approval of the report.. "),
                      _buildListRowNoti(
                          'ProGineer',
                          "images/progineer.jpg",
                          "5/12/2023",
                          "Finished course university training .. "),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildListRowNoti(
      String text, String image, String time, String content) {
    return MaterialButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(image: AssetImage(image))),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 30, 92),
                        fontSize: 18.0),
                  ),
                  SizedBox(width: 89.0),
                  Container(
                    child: Text(time),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  content,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _TrainNotishowCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 1, 30, 92),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 550,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      _buildListRowTrainNoti('Harri', "images/Harri.jpeg",
                          "1 hours ago", "Started training university.."),
                      _buildListRowTrainNoti(
                          'Amal Shadi',
                          "images/studentGirl.jpeg",
                          "1 hours ago",
                          "Send requist priority.."),
                      _buildListRowTrainNoti(
                          'Rama Qasem',
                          "images/studentGirl.jpeg",
                          "2 hours ago",
                          "Send requist to remove her.."),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildListRowTrainNoti(
      String text, String image, String time, String content) {
    return MaterialButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(image: AssetImage(image))),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 30, 92),
                        fontSize: 18.0),
                  ),
                  SizedBox(width: 89.0),
                  Container(
                    child: Text(time),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  content,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
