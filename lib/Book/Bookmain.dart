import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamgohae1/main/main.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';
import 'package:chamgohae1/Book/Science/Science.dart';
import 'package:chamgohae1/Book/Society/Society.dart';

class Bookmain extends StatelessWidget {
  const Bookmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('참고문헌 사이트'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.all(30.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                child: ElevatedButton(
                  child: Text(
                    '기초 자료 사이트',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(
                      color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Basics();
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                child: ElevatedButton(
                  child: Text(
                    '인문 사회 계열 사이트',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(
                      color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Society();
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                child: ElevatedButton(
                  child: Text(
                    '자연 과학 계열 사이트,',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(
                      color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Science();
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
