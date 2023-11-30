import 'package:chamgohae1/Login_page/Loginpage2.dart';
import 'package:chamgohae1/Login_page/Viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Setting.dart';
import 'package:chamgohae1/main/QnAPage.dart';
import 'package:chamgohae1/main.dart';
import 'package:provider/provider.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:chamgohae1/UserProvider/User_Provider.dart';
import 'package:chamgohae1/main/Customer.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final viewModel = MainViewModel(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text('설정'),
            onTap: () {
              print('Settings is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return Setting();
                }),
              );
            },
            trailing: Icon(Icons.add),
          ),
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
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text('Q&A'),
            onTap: () {
              print('Q&A is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return QnAPage();
                }),
              );
            },
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}