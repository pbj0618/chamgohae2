import 'package:flutter/material.dart';
import 'package:chamgohae1/Book/Society/Society.dart';
import 'package:chamgohae1/Book/Science/Science.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';

class TabScreen0 extends StatelessWidget {
  const TabScreen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('논문 정보 사이트',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
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
                        '자연 과학 계열 사이트',
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
        ],
      ),
    );
  }
}
