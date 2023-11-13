import 'package:flutter/material.dart';
import 'package:chamgohae1/main/main.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자연 과학 계열 사이트'),
        centerTitle: true,
        elevation: 0.0, ),
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
                  Text('DBpia / 디비피아'),
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
                            return DBpia();
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
                  Text('RISS / 학술연구정보서비스'),
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
                            return DBpia();
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
                  Text('KISS / 한국학술정보'),
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
                            return DBpia();
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
                  Text('Google Scholar / 구글 학술 검색'),
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
                            return DBpia();
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
                  Text('국가전자도서관'),
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
                             return DBpia();
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
