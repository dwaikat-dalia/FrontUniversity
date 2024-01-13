import 'package:flutter/material.dart';
import 'package:university_11/studentTabelReview.dart';
import 'package:university_11/buttonico.dart';
import 'package:university_11/charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:university_11/nnuicon.dart';

class studentReview extends StatefulWidget {
  const studentReview({super.key});

  @override
  State<studentReview> createState() => _trackingState();
}

class _trackingState extends State<studentReview> {
  final List<String> itemsCompany = [
    'Done ',
    'Not yet ',
  ]; //itemsCompanyapp
  final List<String> itemsCompanyapp = [
    'Done ',
    'Not yet',
  ];
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
                  decoration: BoxDecoration(
                      // color: Color(0xffE5E4E2),
                      borderRadius: BorderRadius.circular(90)),
                  margin: EdgeInsets.only(bottom: 10, left: 20),
                  child: searchic(),
                ),
                Container(
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff5D8AA8),
                    ),
                    //  margin: EdgeInsets.only(right: 500),

                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                    child: studentTabelReview()),
                Container(
                  width: 800,
                  margin: EdgeInsets.only(top: 5),
                  // padding: EdgeInsets.only(left: 20, top: 20),
                  height: 250,
                  // color: Colors.amber
                  // ,
                  decoration: BoxDecoration(
                      color: Color(0xff9EB9D4),
                      borderRadius: BorderRadius.circular(30)),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        height: 250,
                        //color: Colors.grey.shade100,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  " Reports done:",
                                  style: GoogleFonts.salsa(
                                      color: Colors.white, fontSize: 20),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.square,
                                    color: Color(0xff03C03C),
                                  ),
                                  Text(
                                    itemsCompany[0].toString(),
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    " : ",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "8",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.square,
                                    color: Color(0xffC51E3A),
                                  ),
                                  Text(
                                    itemsCompany[1].toString(),
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    " : ",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "6",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            chartCircle([
                              PieChartSectionData(
                                color: Color(0xff03C03C),
                                value: 57.14,
                                title: '57.14%',
                              ),
                              PieChartSectionData(
                                color: Color(0xffC51E3A),
                                value: 42.86,
                                title: '42.86%',
                              ),
                            ]),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 250,
                        // color: Colors.grey.shade50,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Hours done:",
                                  style: GoogleFonts.salsa(
                                      color: Colors.white, fontSize: 20),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.square,
                                    color: Color(0xff03C03C),
                                  ),
                                  Text(
                                    itemsCompanyapp[0].toString(),
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    " : ",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "192",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.square,
                                    color: Color(0xffC51E3A),
                                  ),
                                  Text(itemsCompanyapp[1].toString(),
                                      style: GoogleFonts.salsa(
                                          color: Colors.white, fontSize: 18)),
                                  Text(" : ",
                                      style: GoogleFonts.salsa(
                                          color: Colors.white, fontSize: 18)),
                                  Text(
                                    "168",
                                    style: GoogleFonts.salsa(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            chartCircle([
                              PieChartSectionData(
                                color: Color(0xff03C03C),
                                value: 53,
                                title: '53%',
                              ),
                              PieChartSectionData(
                                color: Color(0xffC51E3A),
                                value: 47,
                                title: '47%',
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 50,
            ),
            width: 375,
            height: 530,
            //  color: Colors.red,

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
                    gpa: 3,
                    hoursDone: 145,
                    startyear: 2019,
                    gradYear: 2024,
                  ),
                ),
              ),
            ),
            // ),
          )
        ],
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String name;
  final String id;
  final int hoursDone;
  final int gpa;
  final int startyear;
  final int gradYear;
  ReportCard({
    required this.name,
    required this.id,
    required this.hoursDone,
    required this.gpa,
    required this.startyear,
    required this.gradYear,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 575,
      height: 510,
      child: Card(
        color: Color(0xffF0F8FF),
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
              Center(
                child: Text("Student University Information",
                    style: GoogleFonts.salsa(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 30, 92),
                    )),
              ),
              SizedBox(height: 4),
              Text(
                'Name: $name',
                style: GoogleFonts.salsa(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'ID: $id',
                style: GoogleFonts.salsa(
                  fontSize: 18,
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Hours done: $hoursDone /161',
                style: GoogleFonts.salsa(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'GPA: $gpa',
                style: GoogleFonts.salsa(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Start year: $startyear',
                style: GoogleFonts.salsa(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Graduate year expected: $gradYear',
                style: GoogleFonts.salsa(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92),
                ),
              ),
              Container(
                width: 230,
                height: 220,
                margin: EdgeInsets.only(left: 35, top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/op3.jpeg"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
