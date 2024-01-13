import 'package:flutter/material.dart';

class MyTableFormCompTrain extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTableFormCompTrain> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {
      "Standard": "General Specialization of the Supervisor ",
      "Comment": "Software Engineering"
    },
    {"Standard": "Job Title", "Mark": "Project Manager"},
    {
      "Standard": "A brief description of the nature of the work ",
      "Comment":
          "I am a detail-oriented Project Coordinator with 3 years of experience working in the IT  industry , specializing in Moodle and partnerung with them to deliver top-notch e-learning solutions for clients"
    },
    {"Standard": "Number of years of experience ", "Comment": "3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 660,
      height: 300,
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
              label: Text('Comment',
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
