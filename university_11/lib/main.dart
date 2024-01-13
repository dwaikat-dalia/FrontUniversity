import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_11/login.dart';
import 'package:university_11/home.dart';
import 'package:provider/provider.dart';
import 'package:university_11/Tabs/tracking.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login Page',
        debugShowCheckedModeBanner: false,
        home: LoginPagew());
    // home: MyHomeApp());
  }
}

class LoginPagew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Container(
              // color: Colors.blue,
              width: 680,
              height: 680,
              child: LoginPage(),
            ),
            Container(
              color: Colors.white, // Set the background color as needed
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 150),
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/TLp.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: 640,
                    height: 50,
                    margin: EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: 'Explore, Learn and Excel with our ',
                        style: GoogleFonts.salsa(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 1, 30,
                              92), // Set the color for the text before "TRAINLINK"
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'TRAINLINK',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Color(
                                  0xff72A0C1), // Set the color for "TRAINLINK"
                            ),
                          ),
                          TextSpan(
                            text: ' app!',
                            style: GoogleFonts.adamina(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromARGB(255, 1, 30,
                                  92), // Set the color for the text after "TRAINLINK"
                            ),
                          ),
                        ],
                      ),
                    ), // Add your login form or other widgets here
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
