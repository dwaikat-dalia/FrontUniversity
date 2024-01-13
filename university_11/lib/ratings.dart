import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ratingReviews extends StatefulWidget {
  @override
  _ratingReviewsState createState() => _ratingReviewsState();
}

class _ratingReviewsState extends State<ratingReviews> {
  @override
  Widget build(BuildContext context) {
    return /*MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                color: const Color(0xffff003566),
                icon: const Icon(Icons.arrow_back),
                iconSize: 30,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Colors.white,
              title: const Text(
                "Ratings and reviews",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    /*color: Colors.teal*/
                    color: Color(0xff003566)),
              ),
            ),
            body: */
        SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          /* Container(
            width: 411,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                namee,
                style: TextStyle(
                    color: Color(0xffffc300),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            //  color: Colors.amber,
          ),*/
          //     Divider(),
          noti(3, "images/studentBoy.jpeg", "Ahmad Khalel",
              "Good experience 👍", "14/9/2023"),
          noti(5, "images/studentBoy.jpeg", "Waleed Asad",
              "I recommend this I learned a lot💯", "14/9/2023"),
          noti(4, "images/studentGirl.jpeg", "Sally Qasem",
              "Very Good handling🌸 ", "10/9/2023"),
          noti(5, "images/studentBoy.jpeg", "Basem Ahmad",
              "Thanks alot for this amazing training❤❤❤", "26/8/2023"),
          noti(5, "images/studentGirl.jpeg", "Jana Belal",
              "You are the top one for me👏⬆️", "1 hour ago"),
          noti(1, "images/studentGirl.jpeg", "Dana Belal", "Bad experience😓",
              "21/6/2023"),
          noti(2, "images/studentGirl.jpeg", "Amal Hassan", "Not bad 🙂",
              "16/6/2023"),
          noti(5, "images/studentGirl.jpeg", "Fatima Belal",
              "You were creative as I expected👏👏👏", "1/6/2023"),
        ],
      ),
    ); //));
  }
}

Widget noti(numberStar, photo33, name33, contentpost33, time33) {
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;
  if (numberStar == 1) {
    s1 = true;
  } else if (numberStar == 2) {
    s2 = true;
    s1 = true;
  } else if (numberStar == 3) {
    s1 = true;
    s2 = true;
    s3 = true;
  } else if (numberStar == 4) {
    s1 = true;
    s2 = true;
    s3 = true;
    s4 = true;
  } else if (numberStar == 5) {
    s1 = true;
    s2 = true;
    s3 = true;
    s4 = true;
    s5 = true;
  }
  return MaterialButton(
    onPressed: () {},
    // padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 500,
      height: 101,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.only(bottom: 2),
      //color: Colors.white,
      //color: Colors.red,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                // margin: EdgeInsets.only(bottom: 60),
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                        image: AssetImage(photo33), fit: BoxFit.cover)),
              ),
              Container(
                width: 300,
                //        color: Colors.yellow,
                margin: EdgeInsets.only(left: 10),
                //color: Colors.amber,
                //padding: EdgeInsets.only(top: 15),
                child: Text(
                  name33,
                  // textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                // alignment: Alignment.topLeft,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 320,
                //color: Colors.grey,
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      //   padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Icon(
                            (s1) ? Icons.star : Icons.star_border,
                            color: (s1) ? Color(0xffffc300) : Colors.black,
                            size: 20,
                          ),
                          Icon(
                            (s2) ? Icons.star : Icons.star_border,
                            color: (s2) ? Color(0xffffc300) : Colors.black,
                            size: 20,
                          ),
                          Icon(
                            (s3) ? Icons.star : Icons.star_border,
                            color: (s3) ? Color(0xffffc300) : Colors.black,
                            size: 20,
                          ),
                          Icon(
                            (s4) ? Icons.star : Icons.star_border,
                            color: (s4) ? Color(0xffffc300) : Colors.black,
                            size: 20,
                          ),
                          Icon(
                            (s5) ? Icons.star : Icons.star_border,
                            color: (s5) ? Color(0xffffc300) : Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          //     color: Colors.green,
                          width: 220,
                          height: 20,
                          margin: EdgeInsets.only(top: 5, left: 5),
                          //  color: Colors.amber,
                          //padding: EdgeInsets.only(bottom: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: ReadMoreText(
                              contentpost33!,
                              trimLines: 3,
                              style: TextStyle(fontSize: 15),
                              trimCollapsedText: '... Read More',
                              trimExpandedText: '... Read Less',
                              trimMode: TrimMode.Line,
                              textAlign: TextAlign.justify,
                              lessStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              moreStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          //    color: Colors.red,
                          child: Text(time33),
                          margin: EdgeInsets.only(left: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
