import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:chamgohae1/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:chamgohae1/Book/Bookmain.dart';
import 'package:chamgohae1/AppUse/AppUse.dart';
import 'package:chamgohae1/Widgethouse/CreativeColor.dart';
import 'package:chamgohae1/main/QnAPage.dart';
import 'package:chamgohae1/main/Setting.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen2.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen3.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chamgohae1/firebase_options.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> banner = ['assets/banner1.png', 'assets/banner1.png'];

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0; // 선택된 탭의 인덱스

  // 하단 탭 바의 항목 리스트
  final List<Widget> _tabScreens = [
    TabScreen1(),
    TabScreen2(),
    TabScreen3(),
  ];

  // 탭이 선택될 때 호출되는 메서드
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chamgohae',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch:
          ColorService.createMaterialColor(const Color(0xff002244)),
          fontFamily: 'NotoSansKR'),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Chamgohae',
            style: TextStyle(
              fontFamily: 'example',
              fontWeight: FontWeight.w200,
              fontSize: 45.0,
            ),
          ),
          centerTitle: true,
        ),
        body: _tabScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: '북마크',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '회원 정보',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onTabTapped,
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      child: CarouselSlider.builder(
        itemCount: banner.length,
        options: CarouselOptions(height: 180.0, viewportFraction: 1.0),
        itemBuilder: (context, itemIndex, realIndex) {
          return Stack(
            children: [
              Image.asset(
                "${banner[itemIndex]}",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.black38,
                  padding: const EdgeInsets.all(4.0),
                  margin: EdgeInsets.all(16.0),
                  child: Text(
                    (itemIndex + 1).toString() +
                        " / " +
                        banner.length.toString(),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return Basics();
          }),
        );
      },
    );
  }
}
