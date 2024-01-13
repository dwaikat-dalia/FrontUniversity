import 'package:flutter/material.dart';

class FormMyTable extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<FormMyTable> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {"id": "images/studentBoy.jpeg", "name": "Ahmad Qasem"},
    {"id": "images/studentGirl.jpeg", "name": "Sally Yaseen"},
    {"id": "images/studentGirl.jpeg", "name": "Amal Abd Alhaq"},
    {"id": "images/studentGirl.jpeg", "name": "Alma Suliman "},
    {"id": "images/studentGirl.jpeg", "name": "Raghad Taqatqa"},
    {"id": "images/studentGirl.jpeg", "name": "Sally Adnan"},
    {"id": "images/studentBoy.jpeg", "name": "Khaled Bader"},
    {"id": "images/studentBoy.jpeg", "name": "Yamen Hajal"},
    {"id": "images/studentBoy.jpeg", "name": "Sami Boshnaq"},
    {"id": "images/studentBoy.jpeg", "name": "Taher Taher"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 700,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Color(0xff72A0C1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
          ],
          rows: infiComanyes.map<DataRow>((company) {
            final index = infiComanyes.indexOf(company);
            return DataRow(
              selected: _selectedRow == index,
              onSelectChanged: (isSelected) {
                setState(() {
                  _selectedRow = isSelected! ? index : -1;
                });
              },
              cells: [
                DataCell(
                  Row(
                    children: [
                      Container(
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                                image: AssetImage('${company["id"]}'))),
                      ),
                      Text('${company["name"]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
          dataRowColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return Color(0xffDBD7D2); // Selected row color
              }
              return Color(0xffF5F5F5);
            },
          ),
        ),
      ),
    );
  }
}
