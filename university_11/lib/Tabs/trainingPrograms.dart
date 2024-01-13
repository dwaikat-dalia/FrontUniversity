import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:university_11/buttonico.dart';
import 'package:university_11/tabelPrperties.dart';
import 'package:flutter/services.dart';

class trainingProgram extends StatelessWidget {
  const trainingProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 500,
              height: 50,
              //color: Colors.red,
              // margin: EdgeInsets.only(left: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.edit_off_rounded,
                    color: Colors.red,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "End of Partnership ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 1, 30, 92),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(right: 40, top: 10),
              //   width: 600,
              height: 540,
              //    color: Colors.yellow,
              /* decoration: BoxDecoration(
              border: Border.all(
            width: 1,
            color: Colors.amber,
          )),*/
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    // width: 990,
                    height: 510,
                    //    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            width: 490,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(60)),
                            height: 50,
                            padding: EdgeInsets.only(left: 50),
                            margin: EdgeInsets.only(bottom: 5),
                            child: searchic()),
                        Container(
                          //width: 990,
                          height: 430,
                          // color: Color.fromARGB(255, 1, 30, 92),
                          child: TabelCompanyDelete(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 50,
                // color: Colors.red,
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "New Partnership",
                        style: TextStyle(
                            color: Color.fromARGB(255, 1, 30, 92),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              AddCompanyForm(),
              Container(
                width: 540,
                height: 280,
                child: Image(
                  image: AssetImage("images/partner2.jpeg"),
                ),
              )
            ],
          ),
        )
      ],
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
          backgroundColor: Colors.white,
          title: Text(
            'Confirmation',
            style: TextStyle(
                color: Color.fromARGB(255, 1, 30, 92),
                fontWeight: FontWeight.bold),
          ),
          content: Text('Are you sure you want to add this company?',
              style: TextStyle(
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold)),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel',
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 30, 92),
                      fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () {
                _addCompany();
                Navigator.of(context).pop();
              },
              child: Text('Yes',
                  style: TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.bold)),
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
    // Show success notification
    if (nameController.text.isNotEmpty &&
        idController.text.isNotEmpty &&
        periodController.text.isNotEmpty) {
      // If the reason and ID are provided and match, proceed with deletion
      setState(() {});

      // Show success notification
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          width: 500,
          backgroundColor: Colors.amber,
          content: Text(
            ' ${name} Company added successfully.',
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
          content: Text('Error: Please provide a valid Data',
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
    print('Company Name: $name, Partnership Period: $period, Company ID: $id');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      margin: EdgeInsets.only(left: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Company Name',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff72A0C1)),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                TextField(
                  controller: periodController,
                  decoration: InputDecoration(
                    labelText: 'Partnership Period',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff72A0C1)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly // Allow only digits
                  ],
                ),
                SizedBox(height: 7),
                TextField(
                  controller: idController,
                  decoration: InputDecoration(
                    labelText: 'Company ID',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff72A0C1)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly // Allow only digits
                  ],
                ),

                /*     SizedBox(width: 16),
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
          */
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff72A0C1)),
                onPressed: () {
                  _showConfirmationDialog();
                },
                child: Text(
                  'Add Company',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff003262)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
