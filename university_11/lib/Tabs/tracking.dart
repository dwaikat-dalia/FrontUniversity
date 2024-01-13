import 'package:flutter/material.dart';
import 'package:university_11/tabd.dart';
import 'package:university_11/buttonico.dart';
import 'package:university_11/nnuicon.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

//import 'package:university_11/notifierVisibility.dart';
class tracking extends StatefulWidget {
  //const tracking({super.key},);
  @override
  State<tracking> createState() => _trackingState();
}

class _trackingState extends State<tracking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  //width: 200,
                  /* decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(70)),
                  */ //padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [searchic()],
                  ),
                ),
                Container(
                    width: 1000,
                    decoration: BoxDecoration(
                        color: Color(0xff5D8AA8),
                        borderRadius: BorderRadius.circular(20)),
                    //  margin: EdgeInsets.only(right: 500),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                    child: CompanyStudentReportTables()),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 650,
                        margin: EdgeInsets.only(top: 10),
                        // padding: EdgeInsets.only(left: 20, top: 20),
                        height: 230,
                        decoration: BoxDecoration(
                            color: Color(0xff5D8AA8),
                            borderRadius: BorderRadius.circular(20)),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 600,
                              height: 80,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/Harri.jpeg"))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 120),
                                          child: Text(
                                            "Harri",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Good Jop, keep going !",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Color(0xff555555)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 600,
                              height: 100,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: nnuicon(),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 500,
                        height: 260,

                        child: SingleChildScrollView(
                          /*child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(30),*/
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ReportCard(
                                name: 'Dalia Hamed Saleem Dwaikat ',
                                id: '11923878',
                                weeklydays: 6,
                                hoursWorked: 46,
                                fieldhoursWorked: 0,
                                weeklyabsent: 2,
                                reason: "Exam in university",
                                learned:
                                    "About the flutter widget, we learned about the columns and rows , and we tried to build a table, and we learned about how go from one page to another and do different tasks on it",
                              ),
                            ),
                          ),
                        ),
                        // ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String name;
  final String id;
  final int hoursWorked;
  final int weeklydays;
  final int fieldhoursWorked;
  final int weeklyabsent;
  final String reason;
  final String learned;
  ReportCard(
      {required this.name,
      required this.id,
      required this.hoursWorked,
      required this.weeklydays,
      required this.fieldhoursWorked,
      required this.weeklyabsent,
      required this.reason,
      required this.learned});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 560,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 500,
                // color: Colors.red,
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Report",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.salsa(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
              ),
              Text(
                'Name: $name',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'ID: $id',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Weekly working days: $weeklydays',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Weekly office hours: $hoursWorked',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Weekly field working hours: $fieldhoursWorked',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Weekly absence hours: $weeklyabsent',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Reason of absent: $reason',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'What learned: $learned',
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
