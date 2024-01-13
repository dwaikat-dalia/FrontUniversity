import 'package:flutter/material.dart';
import 'package:university_11/charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class overview extends StatelessWidget {
  const overview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Exam phase',
      'Interview phase',
      'Starting phase',
    ];
    final List<String> itemsCompany = [
      'Available ',
      'Not available ',
    ]; //itemsCompanyapp
    final List<String> itemsCompanyapp = [
      'For university  ',
      'Not for university',
    ];
    final List<String> itemsStudent = [
      'Joined in this semester',
      'Still waiting',
      'total'
    ];
    final List<String> itemsGradStudent = [
      'Complete the training',
      'In progress',
      'Still waiting'
    ];
    final List<String> itemsNextSemester = [
      'Top of the list',
      'Priority requists',
      'Must join',
      'May join'
    ];
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 392,
                height: 300,
                color: Colors.grey.shade50,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Effective Trainings",
                          style: GoogleFonts.salsa(fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Color(0xffBF4F51),
                          ),
                          Text(
                            items[0].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "160",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xffFADA5E),
                          ),
                          Text(
                            items[1].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "15",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xff7BA05B),
                          ),
                          Text(
                            items[2].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "89",
                            style: GoogleFonts.salsa(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    chartCircle([
                      PieChartSectionData(
                        color: Color(0xffBF4F51),
                        value: 50,
                        title: '50%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffFADA5E),
                        value: 10,
                        title: '10%',
                      ),
                      PieChartSectionData(
                        color: Color(0xff7BA05B),
                        value: 40,
                        title: '40%',
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: 392,
                height: 300,
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          " Companies this semester",
                          style: GoogleFonts.salsa(fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Color(0xffBF4F51),
                          ),
                          Text(
                            itemsCompany[0].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "540",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xffFADA5E),
                          ),
                          Text(
                            itemsCompany[1].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "63",
                            style: GoogleFonts.salsa(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    chartCircle([
                      PieChartSectionData(
                        color: Color(0xffBF4F51),
                        value: 87.5,
                        title: '87.5%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffFADA5E),
                        value: 12.5,
                        title: '12.5%',
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: 392,
                height: 300,
                color: Colors.grey.shade50,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Training on application",
                          style: GoogleFonts.salsa(fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Color(0xff7BA05B),
                          ),
                          Text(
                            itemsCompanyapp[0].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "540",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xffFADA5E),
                          ),
                          Text(
                            itemsCompanyapp[1].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "30",
                            style: GoogleFonts.salsa(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    chartCircle([
                      PieChartSectionData(
                        color: Color(0xff7BA05B),
                        value: 96,
                        title: '96%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffFADA5E),
                        value: 4,
                        title: '4%',
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 392,
                height: 290,
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Students available for the course",
                          style: GoogleFonts.salsa(fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Color(0xff7BA05B),
                          ),
                          Text(
                            itemsStudent[0].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "540",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xffBF4F51),
                          ),
                          Text(
                            itemsStudent[1].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "330",
                            style: GoogleFonts.salsa(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            itemsStudent[2].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "870",
                            style: GoogleFonts.salsa(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    chartCircle([
                      PieChartSectionData(
                        color: Color(0xff7BA05B),
                        value: 64,
                        title: '64%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffBF4F51),
                        value: 36,
                        title: '36%',
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: 392,
                height: 290,
                color: Colors.grey.shade50,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Graduate students this year",
                          style: GoogleFonts.salsa(fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Color(0xff7BA05B),
                          ),
                          Text(
                            itemsGradStudent[0].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "567",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xffBF4F51),
                          ),
                          Text(
                            itemsGradStudent[1].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "177",
                            style: GoogleFonts.salsa(fontSize: 16),
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
                            color: Color(0xffFADA5E),
                          ),
                          Text(
                            itemsGradStudent[2].toString(),
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 16),
                          ),
                          Text(
                            "56",
                            style: GoogleFonts.salsa(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    chartCircle([
                      PieChartSectionData(
                        color: Color(0xff7BA05B),
                        value: 70.8,
                        title: '70.8%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffBF4F51),
                        value: 22.1,
                        title: '22.1%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffFADA5E),
                        value: 7.1,
                        title: '7.1%',
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: 392,
                height: 290,
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "About next semester ",
                          style: GoogleFonts.salsa(fontSize: 17),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Color(0xff7BA05B),
                          ),
                          Text(
                            itemsNextSemester[0].toString(),
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            "10",
                            style: GoogleFonts.salsa(fontSize: 15),
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
                            color: Color(0xffBF4F51),
                          ),
                          Text(
                            itemsNextSemester[1].toString(),
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            "15",
                            style: GoogleFonts.salsa(fontSize: 15),
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
                            color: Color(0xffFADA5E),
                          ),
                          Text(
                            itemsNextSemester[2].toString(),
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            "31",
                            style: GoogleFonts.salsa(fontSize: 15),
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
                            color: Color(0xff9EB9D4),
                          ),
                          Text(
                            itemsNextSemester[3].toString(),
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            " : ",
                            style: GoogleFonts.salsa(fontSize: 15),
                          ),
                          Text(
                            "265",
                            style: GoogleFonts.salsa(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    chartCircle([
                      PieChartSectionData(
                        color: Color(0xff7BA05B),
                        value: 3.03,
                        title: '3.03%',
                      ),
                      PieChartSectionData(
                        color: Color(0xff9EB9D4),
                        value: 83.17,
                        title: '83.17%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffBF4F51),
                        value: 4.5,
                        title: '4.5%',
                      ),
                      PieChartSectionData(
                        color: Color(0xffFADA5E),
                        value: 9.3,
                        title: '9.3%',
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
