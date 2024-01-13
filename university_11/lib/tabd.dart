import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompanyStudentReportTables extends StatefulWidget {
  @override
  _CompanyStudentReportTablesState createState() =>
      _CompanyStudentReportTablesState();
}

class _CompanyStudentReportTablesState
    extends State<CompanyStudentReportTables> {
  List<Widget> companies = [
    CompanyItem("Harri", "images/Harri.jpeg"),
    CompanyItem("Asal", "images/asal.jpeg"),
    CompanyItem("Company C", "images/Harri.jpeg"),
    CompanyItem("Company D", "images/asal.jpeg"),
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
    ReportItem("Report 1", Icons.description),
    ReportItem("Report 2", Icons.description),
    ReportItem("Report 3", Icons.description),
    ReportItem("Report 4", Icons.description),
    ReportItem("Report 5", Icons.description),
    ReportItem("Report 6", Icons.description),
    ReportItem("Report 7", Icons.description),
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
  int selectedGroupIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      /* decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
     */ // margin: EdgeInsets.only(bottom: 250),
      // width: 1000,
      // height: 400,
      //color: Color.fromARGB(34, 245, 245, 245),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 248,
            decoration: BoxDecoration(
                color: Color(0xff5D8AA8),
                borderRadius: BorderRadius.circular(20)),
            width: 250,
            child: SingleChildScrollView(
              child: CompanyTable(
                companies: companies,
                onCompanySelected: (index) {
                  setState(() {
                    selectedCompanyIndex = index;
                    selectedStudentIndex = -1;
                    selectedReportIndex = -1;
                    selectedGroupIndex = -1;
                  });
                },
              ),
            ),
          ),
          if (selectedCompanyIndex != -1)
            Container(
              height: 248,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xff5D8AA8),
                  borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: GroupsTable(
                  groups:
                      getGroups(), // Provide groups based on selected company
                  onGroupSelected: (index) {
                    setState(() {
                      selectedGroupIndex = index;
                      selectedStudentIndex = -1;
                      selectedReportIndex = -1;
                    });
                  },
                ),
              ),
            ),
          if (selectedGroupIndex != -1)
            Container(
              height: 248,
              decoration: BoxDecoration(
                  color: Color(0xff5D8AA8),
                  borderRadius: BorderRadius.circular(20)),
              width: 250,
              child: SingleChildScrollView(
                child: StudentTable(
                  companyName: companies[selectedCompanyIndex],
                  students: studentsList[selectedGroupIndex],
                  onStudentSelected: (index) {
                    setState(() {
                      selectedStudentIndex = index;
                      selectedReportIndex = -1;
                    });
                  },
                ),
              ),
            ),
          if (selectedStudentIndex != -1)
            Container(
              height: 248,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xff5D8AA8),
                  borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: ReportTable(
                  studentName: studentsList[selectedGroupIndex]
                      [selectedStudentIndex],
                  reports: reports,
                  onReportSelected: (index) {
                    setState(() {
                      selectedReportIndex = index;
                    });
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }

  List<Widget> getGroups() {
    // Implement logic to fetch groups based on selected company
    // For now, returning a placeholder list
    return [
      GroupItem("Group 1"),
      GroupItem("Group 2"),
      GroupItem("Group 3"),
    ];
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

class GroupsTable extends StatefulWidget {
  final List<Widget> groups;
  final ValueChanged<int> onGroupSelected;

  GroupsTable({required this.groups, required this.onGroupSelected});

  @override
  _GroupsTableState createState() => _GroupsTableState();
}

class _GroupsTableState extends State<GroupsTable> {
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
                'Groups',
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
        widget.groups.length,
        (index) => DataRow(
          onSelectChanged: (isSelected) {
            setState(() {
              selectedRowIndex = isSelected! ? index : -1;
            });
            if (widget.onGroupSelected != null) {
              widget.onGroupSelected(index);
            }
          },
          selected: selectedRowIndex == index,
          cells: [
            DataCell(widget.groups[index]),
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
  final Widget companyName;
  final List<Widget> students;
  final ValueChanged<int> onStudentSelected;

  StudentTable({
    required this.companyName,
    required this.students,
    required this.onStudentSelected,
  });

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
  final Widget studentName;
  final List<Widget> reports;
  final ValueChanged<int> onReportSelected;

  ReportTable({
    required this.studentName,
    required this.reports,
    required this.onReportSelected,
  });

  @override
  _ReportTableState createState() => _ReportTableState();
}

/*
class ReportTable extends StatefulWidget {
  final Widget studentName;
  final List<Widget> reports;
  final ValueChanged<int> onReportSelected;

  ReportTable({
    required this.studentName,
    required this.reports,
    required this.onReportSelected,
  });

  @override
  _ReportTableState createState() => _ReportTableState();
}
*/
/*
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
                return Colors.amber; // Selected row color
              }
              return Colors.white;
            },
          ),
        ),
      ],
    );
  }
}
*/
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

class GroupItem extends StatelessWidget {
  final String groupName;

  GroupItem(this.groupName);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.group,
            color: Colors.yellow,
          ),
        ),
        Text(groupName),
      ],
    );
  }
}




/*
import 'package:flutter/material.dart';

class CompanyStudentReportTables extends StatefulWidget {
  @override
  _CompanyStudentReportTablesState createState() =>
      _CompanyStudentReportTablesState();
}

class _CompanyStudentReportTablesState
    extends State<CompanyStudentReportTables> {
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
    ReportItem("Report 1", Icons.description),
    ReportItem("Report 2", Icons.description),
    ReportItem("Report 3", Icons.description),
    ReportItem("Report 4", Icons.description),
    ReportItem("Report 5", Icons.description),
    ReportItem("Report 6", Icons.description),
    ReportItem("Report 7", Icons.description),
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
      // margin: EdgeInsets.only(bottom: 250),
      // width: 1000,
      // height: 400,
      //color: Color.fromARGB(34, 245, 245, 245),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
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
                child: StudentTable(
                  companyName: companies[selectedCompanyIndex],
                  students: studentsList[selectedCompanyIndex],
                  onStudentSelected: (index) {
                    setState(() {
                      selectedStudentIndex = index;
                      selectedReportIndex = -1;
                    });
                  },
                ),
              ),
            ),
          if (selectedStudentIndex != -1)
            Container(
              height: 248,
              width: 200,
              child: SingleChildScrollView(
                child: ReportTable(
                  studentName: studentsList[selectedCompanyIndex]
                      [selectedStudentIndex],
                  reports: reports,
                  onReportSelected: (index) {
                    setState(() {
                      selectedReportIndex = index;
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
            return Colors.amber; // Selected row color
          }
          return Colors.white;
        },
      ),
    );
  }
}

class StudentTable extends StatefulWidget {
  final Widget companyName;
  final List<Widget> students;
  final ValueChanged<int> onStudentSelected;

  StudentTable({
    required this.companyName,
    required this.students,
    required this.onStudentSelected,
  });

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
                  return Colors.amber; // Selected row color
                }
                return Colors.white;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ReportTable extends StatefulWidget {
  final Widget studentName;
  final List<Widget> reports;
  final ValueChanged<int> onReportSelected;

  ReportTable({
    required this.studentName,
    required this.reports,
    required this.onReportSelected,
  });

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
                return Colors.amber; // Selected row color
              }
              return Colors.white;
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
          color: Colors.amber,
        ),
        Container(margin: EdgeInsets.only(left: 10), child: Text(reportName)),
      ],
    );
  }
}
*/