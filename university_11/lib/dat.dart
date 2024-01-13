import 'package:flutter/material.dart';

class YearPickerWidget extends StatefulWidget {
  @override
  _YearPickerWidgetState createState() => _YearPickerWidgetState();
}

class _YearPickerWidgetState extends State<YearPickerWidget> {
  List<int> years = List.generate(30, (index) => DateTime.now().year - index);

  int? selectedYear; // Change the type to int?

  @override
  void initState() {
    super.initState();
    selectedYear = DateTime.now().year;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      /*decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey),
          // borderRadius: BorderRadius.circular(8.0),
          ),*/
      child: DropdownButton<int>(
        value: selectedYear,
        icon: Icon(
          Icons.event,
          color: Colors.amber,
        ),
        onChanged: (int? newValue) {
          setState(() {
            selectedYear = newValue;
          });
          if (selectedYear != null) {
            print('Selected Year: $selectedYear');
          }
        },
        items: years.map<DropdownMenuItem<int>>((int year) {
          return DropdownMenuItem<int>(
            value: year,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '$year',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
            ),
          );
        }).toList(),
        underline: Container(),
      ),
    );
  }
}
