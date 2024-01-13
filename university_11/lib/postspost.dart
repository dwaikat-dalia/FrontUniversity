import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('University Partnership'),
        ),
        body: AddCompanyForm(),
      ),
    );
  }
}

class AddCompanyForm extends StatefulWidget {
  @override
  _AddCompanyFormState createState() => _AddCompanyFormState();
}

class _AddCompanyFormState extends State<AddCompanyForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController periodController = TextEditingController();
  final TextEditingController idController = TextEditingController();

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to add this company?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _addCompany();
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _addCompany() {
    String name = nameController.text;
    String period = periodController.text;
    String id = idController.text;

    print('Company Name: $name, Partnership Period: $period, Company ID: $id');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Company Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: periodController,
                    decoration: InputDecoration(
                      labelText: 'Partnership Period',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter
                          .digitsOnly // Allow only digits
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: idController,
                    decoration: InputDecoration(
                      labelText: 'Company ID',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter
                          .digitsOnly // Allow only digits
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            SizedBox(
              width: 50,
              child: ElevatedButton(
                onPressed: () {
                  _showConfirmationDialog();
                },
                child: Text('Add Company'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
