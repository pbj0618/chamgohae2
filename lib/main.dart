import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';
import 'package:chamgohae1/UserProvider/User_Provider.dart';
import 'package:chamgohae1/Widgethouse/CreativeColor.dart';
import 'package:chamgohae1/firebase_options.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen1.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen2.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';

List<String> banner = ['assets/banner1.png', 'assets/banner1.png'];



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  KakaoSdk.init(
    nativeAppKey: '4d6b2e439a8a3c2337f39a8c7e3e54b4',
    javaScriptAppKey: 'e8e76a20c2e86ed6d04c8f224ce2d321',
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MyApp(),
    ),
  );
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
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minimumSize: const Size(400, 60),
            ),
          ),
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
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return Basics();
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // 좌우 여백 조절
        child: CarouselSlider.builder(
          itemCount: banner.length,
          carouselController: _carouselController,
          options: CarouselOptions(
            aspectRatio: MediaQuery.of(context).size.width /
                MediaQuery.of(context).size.height,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              // 여기서 좌우로 스크롤될 때의 처리를 추가할 수 있습니다.
            },
          ),
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
      ),
    );
  }
}
