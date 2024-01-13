import 'package:flutter/material.dart';

class MyTableFormTrain extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTableFormTrain> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {
      "Standard":
          "During the internship, was there an improvement in the student's written and verbal skills?",
      "Mark": "Yes"
    },
    {
      "Standard":
          "During the internship, was there a significant improvement in the student's ability to organize work?",
      "Mark": "Yes"
    },
    {
      "Standard": "Did the student trainee meet your expectations?",
      "Mark": "Yes"
    },
    {
      "Standard":
          "What is your overall assessment of An-Najah University students?",
      "Mark": "Excellent"
    },
    {
      "Standard": "Feedback on your review ",
      "Mark": "Good student , and his committed to time and finish his tasks"
    },
    {
      "Standard":
          "If you have job opportunities and do you recommend hiring a student intern? ",
      "Mark": "Yes"
    },
    {
      "Standard":
          "Do you have any notes that you would like to record to enrich the training process for the enrolled students?",
      "Mark": "-"
    },
    {
      "Standard":
          "Do you suggest adding any courses to the student program to meet the student's needs during training?",
      "Mark": "VR/AR"
    },
    {
      "Standard":
          "What are the personal and practical skills that this student needs to develop?",
      "Mark": "Listen more to people and take a full idea about the topic"
    },
    {
      "Standard": "Recommendations of the student training supervisor ",
      "Mark":
          "Good Student in self-learning and searching for solution and solving the problems"
    },
    {
      "Standard":
          "Please suggest ideas as graduation projects nominated for students of the specialization",
      "Mark": "-"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 660,
      height: 880,
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
                  Container(
                    // height: 240,
                    //padding: EdgeInsets.all(30),
                    child: Text('${company["Standard"]}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
                DataCell(
                  Text('${company["Mark"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ],
            );
          }).toList(),
          dataRowMaxHeight: 70,
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
