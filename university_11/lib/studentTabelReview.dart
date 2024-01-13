import 'package:flutter/material.dart';

class studentTabelReview extends StatefulWidget {
  @override
  _StudentTableReviewState createState() => _StudentTableReviewState();
}

class _StudentTableReviewState extends State<studentTabelReview> {
  List<Widget> companies = [
    CompanyItem("Harri", "images/Harri.jpeg"),
    CompanyItem("Asal", "images/asal.jpeg"),
    CompanyItem("Company C", "images/Harri.jpeg"),
    CompanyItem("Company D", "images/asal.jpeg"),
  ];

  List<Widget> students = [
    StudentItem("Student 1", "images/studentGirl.jpeg"),
    StudentItem("Student 2", "images/studentBoy.jpeg"),
    StudentItem("Student 3", "images/studentGirl.jpeg"),
    StudentItem("Student 4", "images/studentBoy.jpeg"),
  ];

  List<Widget> reports = [
    ReportItem("Group 1", Icons.groups),
    ReportItem("Group 2", Icons.groups),
    ReportItem("Group 3", Icons.groups),
    ReportItem("Group 4", Icons.groups),
    ReportItem("Group 5", Icons.groups),
    ReportItem("Group 6", Icons.groups),
    ReportItem("Group 7", Icons.groups),
  ];

  List<List<Widget>> studentsList = [
    [
      StudentItem("sami", "images/studentBoy.jpeg"),
      StudentItem("fatma", "images/studentGirl.jpeg"),
      StudentItem("tala", "images/studentGirl.jpeg"),
      StudentItem("salam", "images/studentGirl.jpeg"),
    ],
    [
      StudentItem("Tareq", "images/studentBoy.jpeg"),
      StudentItem("Wael", "images/studentBoy.jpeg"),
      StudentItem("Amal", "images/studentGirl.jpeg"),
      StudentItem("Tasneem", "images/studentGirl.jpeg"),
    ],
    [
      StudentItem("Hazem", "images/studentBoy.jpeg"),
      StudentItem("Wael", "images/studentBoy.jpeg"),
      StudentItem("Ahmad", "images/studentBoy.jpeg"),
      StudentItem("Yara", "images/studentGirl.jpeg"),
    ],
    [
      StudentItem("Yasmmen", "images/studentGirl.jpeg"),
      StudentItem("Naser", "images/studentBoy.jpeg"),
      StudentItem("Omar", "images/studentBoy.jpeg"),
      StudentItem("Waleed", "images/studentBoy.jpeg"),
    ]
  ];

  int selectedCompanyIndex = -1;
  int selectedStudentIndex = -1;
  int selectedReportIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 248,
            width: 250,
            child: SingleChildScrollView(
              child: CompanyTable(
                companies: companies,
                onCompanySelected: (index) {
                  setState(() {
                    selectedCompanyIndex = index;
                    selectedStudentIndex = -1;
                    selectedReportIndex = -1;
                  });
                },
              ),
            ),
          ),
          if (selectedCompanyIndex != -1)
            Container(
              height: 248,
              width: 250,
              child: SingleChildScrollView(
                child: ReportTable(
                  reports: reports,
                  onReportSelected: (index) {
                    setState(() {
                      selectedReportIndex = index;
                      selectedStudentIndex = -1;
                    });
                  },
                ),
              ),
            ),
          if (selectedReportIndex != -1)
            Container(
              height: 248,
              width: 250,
              child: SingleChildScrollView(
                child: StudentTable(
                  students: studentsList[selectedCompanyIndex],
                  onStudentSelected: (index) {
                    setState(() {
                      selectedStudentIndex = index;
                    });
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CompanyTable extends StatefulWidget {
  final List<Widget> companies;
  final ValueChanged<int> onCompanySelected;

  CompanyTable({required this.companies, required this.onCompanySelected});

  @override
  _CompanyTableState createState() => _CompanyTableState();
}

class _CompanyTableState extends State<CompanyTable> {
  int selectedRowIndex = -1;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Container(
            width: 134,
            child: Center(
              child: Text(
                'Company',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
      rows: List<DataRow>.generate(
        widget.companies.length,
        (index) => DataRow(
          onSelectChanged: (isSelected) {
            setState(() {
              selectedRowIndex = isSelected! ? index : -1;
            });
            if (widget.onCompanySelected != null) {
              widget.onCompanySelected(index);
            }
          },
          selected: selectedRowIndex == index,
          cells: [
            DataCell(widget.companies[index]),
          ],
        ),
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Color(0xff72A0C1); // Selected row color
          }
          return Color(0xffF0F8FF);
        },
      ),
    );
  }
}

class StudentTable extends StatefulWidget {
  final List<Widget> students;
  final ValueChanged<int> onStudentSelected;

  StudentTable({required this.students, required this.onStudentSelected});

  @override
  _StudentTableState createState() => _StudentTableState();
}

class _StudentTableState extends State<StudentTable> {
  int selectedRowIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DataTable(
            columns: [
              DataColumn(
                label: Container(
                  width: 200,
                  child: Center(
                    child: Text(
                      'Student',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            rows: List<DataRow>.generate(
              widget.students.length,
              (index) => DataRow(
                onSelectChanged: (isSelected) {
                  setState(() {
                    selectedRowIndex = isSelected! ? index : -1;
                  });
                  if (widget.onStudentSelected != null) {
                    widget.onStudentSelected(index);
                  }
                },
                selected: selectedRowIndex == index,
                cells: [
                  DataCell(widget.students[index]),
                ],
              ),
            ),
            dataRowColor: MaterialStateColor.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return Color(0xff72A0C1); // Selected row color
                }
                return Color(0xffF0F8FF);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ReportTable extends StatefulWidget {
  final List<Widget> reports;
  final ValueChanged<int> onReportSelected;

  ReportTable({required this.reports, required this.onReportSelected});

  @override
  _ReportTableState createState() => _ReportTableState();
}

class _ReportTableState extends State<ReportTable> {
  int selectedRowIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
          columns: [
            DataColumn(
              label: Container(
                width: 200,
                child: Center(
                  child: Text(
                    'Report',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
          rows: List<DataRow>.generate(
            widget.reports.length,
            (index) => DataRow(
              onSelectChanged: (isSelected) {
                setState(() {
                  selectedRowIndex = isSelected! ? index : -1;
                });
                if (widget.onReportSelected != null) {
                  widget.onReportSelected(index);
                }
              },
              selected: selectedRowIndex == index,
              cells: [
                DataCell(widget.reports[index]),
              ],
            ),
          ),
          dataRowColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return Color(0xff72A0C1); // Selected row color
              }
              return Color(0xffF0F8FF);
            },
          ),
        ),
      ],
    );
  }
}

class CompanyItem extends StatelessWidget {
  final String companyName;
  final String icon;

  CompanyItem(this.companyName, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image: AssetImage(icon))),
        ),
        Text(companyName),
      ],
    );
  }
}

class StudentItem extends StatelessWidget {
  final String studentName;
  final String icon;

  StudentItem(this.studentName, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image: AssetImage(icon))),
        ),
        Text(studentName),
      ],
    );
  }
}

class ReportItem extends StatelessWidget {
  final String reportName;
  final IconData icon;

  ReportItem(this.reportName, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.yellow,
        ),
        Container(margin: EdgeInsets.only(left: 10), child: Text(reportName)),
      ],
    );
  }
}
