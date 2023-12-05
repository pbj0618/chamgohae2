import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TabScreen2 extends StatelessWidget {
  const TabScreen2({Key? key});

  // 함수를 사용하여 링크를 여러 곳에서 재사용할 수 있습니다.
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 기초 자료 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://example.com/basics');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            '기초 자료 사이트',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 인문 사회 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://example.com/society');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            '인문 사회 계열 사이트',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://example.com/science');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            '자연 과학 계열 사이트',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
