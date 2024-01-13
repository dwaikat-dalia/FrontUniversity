/*import 'package:flutter/material.dart';

class tabelCompanyDelete extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<tabelCompanyDelete> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {"id": 11923878, "name": "Harri"},
    {"id": 11933878, "name": "Asal Technologies"},
    {"id": 11943878, "name": "ITG"},
    {"id": 11936878, "name": "ProGineers"},
    {"id": 11934878, "name": "Foothill"},
    {"id": 11934878, "name": "Tap"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 200,
      color: Color.fromARGB(255, 1, 30, 92),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('Id',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
            DataColumn(
              label: Text('Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
            DataColumn(
              label: Text('Delete',
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
                  Text('${company["id"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                DataCell(
                  Text('${company["name"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _showDeleteConfirmationDialog(company);
                    },
                    color: const Color.fromARGB(255, 240, 49, 35),
                  ),
                ),
              ],
            );
          }).toList(),
          dataRowColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.amber; // Selected row color
              }
              return Colors.white;
            },
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(Map<String, dynamic> company) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          //   color: Colors.amber,
          child: AlertDialog(
            backgroundColor: Colors.white, // Set the background color

            title: Text(
              'Delete Confirmation',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 30, 92),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Are you sure you want to delete ${company["name"]} (${company["id"]})?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Please provide a reason:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    // You can capture the reason here if needed
                  },
                  decoration: InputDecoration(
                    hintText: 'Reason for deletion',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _onDeletePressed(company);
                  Navigator.pop(context); // Close the dialog
                },
                child: Text(
                  'I am sure',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onDeletePressed(Map<String, dynamic> company) {
    setState(() {
      infiComanyes.remove(company);
      _selectedRow = -1; // Reset selected row after deletion
    });
  }
}
*/
import 'package:flutter/material.dart';

class TabelCompanyDelete extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<TabelCompanyDelete> {
  int _selectedRow = -1;
  List<Map<String, dynamic>> infiComanyes = [
    {"id": 11923878, "name": "Harri"},
    {"id": 11933878, "name": "Asal Technologies"},
    {"id": 11943878, "name": "ITG"},
    {"id": 11936878, "name": "ProGineers"},
    {"id": 11934878, "name": "Foothill"},
    {"id": 11934878, "name": "Tap"},
    {"id": 11933878, "name": "Asal Technologies"},
    {"id": 11943878, "name": "ITG"},
    {"id": 11936878, "name": "ProGineers"},
    {"id": 11934878, "name": "Foothill"},
    {"id": 11934878, "name": "Tap"}
  ];

  TextEditingController reasonController = TextEditingController();
  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
          color: Color(0xff72A0C1), borderRadius: BorderRadius.circular(40)),
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('Id',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
            DataColumn(
              label: Text('Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            ),
            DataColumn(
              label: Text('Delete',
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
                  Text('${company["id"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                DataCell(
                  Text('${company["name"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _showDeleteConfirmationDialog(company);
                    },
                    color: const Color(0xff5D8AA8),
                  ),
                ),
              ],
            );
          }).toList(),
          dataRowColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return Color(0xff9EB9D4); // Selected row color
              }
              return Color(0xffF5F5F5);
            },
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(Map<String, dynamic> company) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
              'Delete Confirmation',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 30, 92),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Are you sure you want to delete ${company["name"]} (${company["id"]})?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Please provide a reason:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
                TextField(
                  controller: reasonController,
                  onChanged: (value) {
                    // You can capture the reason here if needed
                  },
                  decoration: InputDecoration(
                    hintText: 'Reason for deletion',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Please enter the company ID:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
                TextField(
                  controller: idController,
                  onChanged: (value) {
                    // You can capture the company ID here if needed
                  },
                  decoration: InputDecoration(
                    hintText: 'Company ID',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 30, 92),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _onDeletePressed(company);
                  Navigator.pop(context); // Close the dialog
                },
                child: Text(
                  'I am sure',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onDeletePressed(Map<String, dynamic> company) {
    if (reasonController.text.isNotEmpty &&
        idController.text.isNotEmpty &&
        idController.text == company["id"].toString()) {
      // If the reason and ID are provided and match, proceed with deletion
      setState(() {
        infiComanyes.remove(company);
        _selectedRow = -1; // Reset selected row after deletion
      });

      // Show success notification
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          width: 500,
          backgroundColor: Colors.amber,
          content: Text(
            ' ${company["name"]} Company deleted successfully.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 30, 92)),
          ),
          duration: Duration(seconds: 4),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      );
    } else {
      // Show error notification if reason or ID is missing or doesn't match
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          width: 500,
          backgroundColor: Colors.red,
          content: Text('Error: Please provide a valid reason and company ID.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 30, 92))),
          duration: Duration(seconds: 4),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      );
    }
  }
}
