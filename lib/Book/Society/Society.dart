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

class Society extends StatelessWidget {
  const Society({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인문 사회 계열 사이트',
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
                  Text('KOSSDA / 한국사회과학자료원'),
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
                  Text('KSDC / 한국사회과학데이터센터'),
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
                  Text('CNC 학술정보'),
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
                  Text('KRpia / 한국 지식콘텐츠'),
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
