import 'package:flutter/material.dart';
import 'package:chamgohae1/main/QnAPage.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:chamgohae1/main/Privacy.dart';
import 'package:chamgohae1/main/Uselaw.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '4d6b2e439a8a3c2337f39a8c7e3e54b4');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabScreen3(),
    );
  }
}

class TabScreen3 extends StatefulWidget {
  const TabScreen3({Key? key,}) : super(key: key);



  @override
  State<TabScreen3> createState() => _TabScreen3State();
}

class _TabScreen3State extends State<TabScreen3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.contact_support,
              color: Colors.grey[850],
            ),
            title: Text('카카오 문의하기'),
            onTap: () {
              final uri = Uri.parse('http://pf.kakao.com/_wDpGG');
              launchUrl(uri);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text('FAQ'),
            onTap: () {
              print('Q&A is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return QnAPage();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.grey[850],
            ),
            title: Text('개인정보 처리방침'),
            onTap: () {
              print('Privacy is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return Privacy();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}