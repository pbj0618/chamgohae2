import 'package:chamgohae1/Login_page/Loginpage2.dart';
import 'package:chamgohae1/Login_page/Logoutpage.dart';
import 'package:chamgohae1/Login_page/Viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Setting.dart';
import 'package:chamgohae1/main/QnAPage.dart';
import 'package:chamgohae1/main/main.dart';
import 'package:chamgohae1/Login_page/Loginpage.dart';
import 'package:provider/provider.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:chamgohae1/UserProvider/User_Provider.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '033ae651eac2b2c9d95f492284197bdb');
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
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Image.network(
                  viewModel.user?.kakaoAccount?.profile?.profileImageUrl ?? ''),
            ),
            accountName: Text(
              '${viewModel.isLogined}',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              'pbj0618@naver.com',
              style: TextStyle(color: Colors.white),
            ),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
              color: Color(0xff1D3557),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.login,
              color: Colors.grey[850],
            ),
            title: Text('Kakao Login'),
            autofocus: true,
            onTap: () async {
              await viewModel.login();
              setState(() {});
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.grey[850],
            ),
            title: Text('Kakao Logout'),
            onTap: () async {
              await viewModel.logout();
              setState(() {});
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[850],
            ),
            title: Text('Home'),
            onTap: () {
              print('home is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                }),
              );
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text('Settings'),
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