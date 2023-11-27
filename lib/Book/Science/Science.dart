import 'package:chamgohae1/Book/Science/Nature/Nature.dart';
import 'package:chamgohae1/Book/Science/Pubmed/Pubmed.dart';
import 'package:chamgohae1/Book/Science/Science_library/Science_library.dart';
import 'package:chamgohae1/Book/Science/Science_on/Science_on.dart';
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
                  Text('Science library / 국가과학전자도서관'),
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
                            return Science_library();
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
                  Text('Nature / 해외 자연과학 학술지'),
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
                            return Nature();
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
                  Text('Science on'),
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
                            return Science_on();
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
                  Text('NCBI / 해외 생명과학 학술지'),
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
                            return Pubmed();
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
