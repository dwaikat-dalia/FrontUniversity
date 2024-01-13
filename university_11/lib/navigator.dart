import 'package:flutter/material.dart';

class navigator extends StatelessWidget {
  const navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          /* SizedBox(
            height: 80,
            width: 150,
            child: Image.asset("TLp.png"),
          ),*/
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavbarItem("Eposidos"),
              SizedBox(
                width: 60,
              ),
              _NavbarItem("About"),
            ],
          )
        ],
      ),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  String title;
  _NavbarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}
