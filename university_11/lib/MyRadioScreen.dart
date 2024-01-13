import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRadioScreen extends StatefulWidget {
  @override
  _MyRadioScreenState createState() => _MyRadioScreenState();
}

class _MyRadioScreenState extends State<MyRadioScreen> {
  String _resultMessage = ''; // Initialize with an empty string
  String _selectedOption = ''; // Initialize with an empty string

  void _showNotification(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color(0xff72A0C1),
        content: Text(message, style: GoogleFonts.salsa(fontSize: 17)),
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 700,
                //color: Colors.red,
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Enter the final grade of the course:",
                  style: GoogleFonts.salsa(fontSize: 25),
                )),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  RadioListTile(
                    title: Text('Successful',
                        style: GoogleFonts.salsa(fontSize: 19)),
                    value: 'Successful',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title:
                        Text('Failure', style: GoogleFonts.salsa(fontSize: 19)),
                    value: 'Failure',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_selectedOption.isNotEmpty) {
                  _showNotification('The Result raised successfully');
                } else {
                  _showNotification('Please choose an option first');
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Submit',
                    style: GoogleFonts.salsa(
                        fontSize: 25, color: Color(0xff1F305E))),
              ),
            ),
          ],
        ));
  }
}
