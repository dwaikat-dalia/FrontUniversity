import 'package:flutter/material.dart';

class searchic extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<searchic> {
  bool isTextFieldVisible = false;
  bool colorcolor = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      margin: EdgeInsets.only(top: 10),
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: colorcolor ? Colors.amber : null,
            ),
            onPressed: () {
              setState(() {
                colorcolor = !colorcolor;
                isTextFieldVisible = !isTextFieldVisible;
              });
            },
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: isTextFieldVisible ? 50 : 0,
            width: isTextFieldVisible ? 150 : 0,
            child: isTextFieldVisible
                ? Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search company...',
                      ),
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
