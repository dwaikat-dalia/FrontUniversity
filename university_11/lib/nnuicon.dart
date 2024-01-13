import 'package:flutter/material.dart';

class nnuicon extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<nnuicon> {
  bool isTextFieldVisible = false;
  bool colorcolor = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.only(top: 10),
      //color: Colors.amber,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MaterialButton(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                          image: AssetImage("images/najah.jpg"))),
                ),
                onPressed: () {
                  setState(() {
                    colorcolor = !colorcolor;
                    isTextFieldVisible = !isTextFieldVisible;
                  });
                },
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  "NNU",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: isTextFieldVisible ? 50 : 0,
                width: isTextFieldVisible ? 400 : 0,
                child: isTextFieldVisible
                    ? Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Add your comment...',
                          ),
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                      )
                    : null,
              ),
            ],
          ),
          Container(
            width: 150,
            margin: EdgeInsets.only(left: 400),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff72A0C1)),
              onPressed: () {
                //  _showConfirmationDialog();
              },
              child: Text(
                'Send',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff003262)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
