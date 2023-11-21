import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Setting.dart';
import 'package:chamgohae1/main/QnAPage.dart';
import 'package:chamgohae1/main/main.dart';
import 'package:chamgohae1/Login_page/Loginpage.dart';

class TabScreen3 extends StatelessWidget {
  const TabScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/2.png'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/7.png'),
                backgroundColor: Colors.white,
              ),
              // CircleAvatar(
              //   backgroundImage: AssetImage('assets/7.png'),
              //   backgroundColor: Colors.white,
              // ),
            ],
            accountName: Text('참고해 운영자',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text('pbj0618@naver.com',
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
            leading: Icon(Icons.login,
              color: Colors.grey[850],
            ),
            title: Text('Login'),
            onTap: () {
              print('login is clicked');
              Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return LoginPage();
                }
                ),
              );
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Colors.grey[850],
            ),
            title: Text('Home'),
            onTap: () {
              print('home is clicked');
              Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                }
                ),
              );
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text('Settings'),
            onTap: () {
              print('Settings is clicked');
              Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return Setting();
                }
                ),
              );
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text('Q&A'),
            onTap: () {
              print('Q&A is clicked');
              Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return QnAPage();
                }
                ),
              );
            },
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
