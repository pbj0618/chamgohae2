import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/main.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('과제 도움 사이트',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5.0),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child:
                  Text('구글 트렌드'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Kossda();
                          }
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child:
                  Text('네이버 학술정보 연구트렌드 분석'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Ksdc();
                          }
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child:
                  Text('네이버 데이터랩'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Cnc();
                          }
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child:
                  Text('Nature'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Cnc();
                          }
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child:
                  Text('IT FIND'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return KRpia();
                          }
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  child:
                  Text('블랙키위'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    side: BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return KRpia();
                          }
                      ),
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
