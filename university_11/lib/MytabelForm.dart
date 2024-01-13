import 'package:flutter/material.dart';

class MyTableForm extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTableForm> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {"Standard": "Date of training start", "Mark": "15/9/2023"},
    {
      "Standard": "Responsibilities of the trainee",
      "Mark":
          "Programming Moodle system using php implementaion of moodle and related technologies in educational websites for educational Institution "
    },
    {"Standard": "Internship End Date ", "Mark": "30/12/2023"},
    {"Standard": "Number of days of absence", "Mark": "0"},
    {"Standard": "General Trainee Behavior", "Mark": "5"},
    {"Standard": "Attendance", "Mark": "5"},
    {"Standard": "Performance and motivation", "Mark": "5"},
    {"Standard": "Ability to follow instructions", "Mark": "4"},
    {"Standard": "Entrepreneurship", "Mark": "5"},
    {"Standard": "The desire to evolve and continuous learning ", "Mark": "5"},
    {"Standard": "Written communication skills", "Mark": "4"},
    {"Standard": "Verbal communication skills", "Mark": "4"},
    {"Standard": "Technical competence", "Mark": "4"},
    {"Standard": "Mastering the work", "Mark": "4"},
    {"Standard": "Collaborative Skills", "Mark": "5"},
    {"Standard": "Ability to solve problems", "Mark": "4"},
    {"Standard": "Administrative and organizational skills", "Mark": "5"},
    {
      "Standard": "Commitment to professional ethics and responsibilities",
      "Mark": "5"
    },
    {"Standard": "Acquire design skills (optional)", "Mark": " "},
    {
      "Standard": "Ability to analyze and use information appropriately",
      "Mark": "4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 660,
      height: 1050,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xff72A0C1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('Standard',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
            DataColumn(
              label: Text('Mark/Comment',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
          ],
          rows: infiComanyes.map<DataRow>((company) {
            final index = infiComanyes.indexOf(company);
            return DataRow(
              cells: [
                DataCell(
                  Text('${company["Standard"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                DataCell(
                  Text('${company["Mark"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ],
            );
          }).toList(),
          dataRowColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return Color(0xffF5F5F5); // Selected row color
              }
              return Color(0xffF5F5F5);
            },
          ),
        ),
      ),
    );
  }
}
