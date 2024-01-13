import 'package:flutter/material.dart';
import 'package:university_11/home.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _handleLogin() {
    // In a real application, you would perform authentication logic here
    // For now, let's print the entered credentials to the console
    print('Username: ${usernameController.text}');
    print('Password: ${passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Background image
      Image.asset(
        'images/najah2024a.jpg', // Replace with your image asset path
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      Padding(
        padding: const EdgeInsets.all(116.0),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Color(0xffF0F8FF).withOpacity(0.9),
                spreadRadius: 2,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],

            //   color: Color(0xff72A0C1)), // Deep blue for the border
            // borderRadius: BorderRadius.circular(20),
          ),
          /* decoration: BoxDecoration(
              color: Colors.white
                  .withOpacity(0.3), // Light gray for the box background
              border: Border.all(
                  width: 1,
               //   color: Color(0xff72A0C1)), // Deep blue for the border
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  //  labelText: 'Username',
                  labelText: 'Username',
                  labelStyle: GoogleFonts.salsa(color: Color(0xff003262)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Color(0xff003262))),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),

                    borderSide: BorderSide(
                        color: Color(
                            0xff003262)), // Change the border color when inactive
                  ),
                  // Change the border color when focused
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  //  labelText: 'Username',
                  labelText: 'Password',
                  labelStyle: GoogleFonts.salsa(
                      color:
                          Color(0xff003262) // Set the color of the label text
                      ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Color(0xff003262))),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),

                    borderSide: BorderSide(
                        color: Color(
                            0xff003262)), // Change the border color when inactive
                  ),
                  // Change the border color when focused
                ),
              ),
              SizedBox(height: 32),
              Container(
                width: 230,
                height: 50,

                // color: const Color.fromARGB(255, 210, 165, 218),
                child: MaterialButton(
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.salsa(
                        color: Color(0xff14213d),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Color(0xff72A0C1),
                  textColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  onPressed: () {
                    // Navigate to the new page when the button is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomeApp()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
