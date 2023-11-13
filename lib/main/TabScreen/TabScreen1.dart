import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';
import 'package:chamgohae1/Book/Science/Science.dart';
import 'package:chamgohae1/Book/Society/Society.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
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

List<String> banner = ['assets/banner1.png', 'assets/banner1.png'];

void onBannerPressed(BuildContext context, int index) {
  switch (index) {
    case 0:
      // 첫 번째 배너를 클릭했을 때의 동작
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AppUse(); // 첫 번째 페이지로 이동
      }));
      break;
    case 1:
      // 두 번째 배너를 클릭했을 때의 동작
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return Basics(); // 두 번째 페이지로 이동
        }),
      );
      break;
    case 2:
  }
}

class TabScreen1 extends StatelessWidget {
  const TabScreen1({super.key});

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
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                BannerWidget(),
                Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(5.0),
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
                          '자연 과학 계열 사이트,',
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
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '※한국외국어대학교의 지원을 받아 제작됨',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
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
    return CarouselSlider(
      items: banner.map((image) {
        int index = banner.indexOf(image); // forEach 루프 내에서 index 정의
        return Stack(
          children: [
            Image.asset(
              "${image}",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            GestureDetector(
              onTap: () {
                onBannerPressed(context, index);
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(),
              ),
            ),
          ],
        );
      }).toList(),
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 7),
      ),
    );


  }
}
