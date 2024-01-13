import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {"id": 11923878, "name": "Harri"},
    {"id": 11933878, "name": "Asal Technologies"},
    {"id": 11943878, "name": "ITG"},
    {"id": 11936878, "name": "ProGineers"},
    {"id": 11934878, "name": "Foothill"},
    {"id": 11934878, "name": "Tap"},
    {"id": 11943878, "name": "ITG"},
    {"id": 11936878, "name": "ProGineers"},
    {"id": 11934878, "name": "Foothill"},
    {"id": 11934878, "name": "Tap"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
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
                label: Text('Id',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white))),
            DataColumn(
                label: Text('Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white))),
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
                  Text('${company["id"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                DataCell(
                  Text('${company["name"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ],
            );
          }).toList(),
          //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
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
