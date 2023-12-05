import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/Book/Bookmain.dart';
import 'package:chamgohae1/Widgethouse/CreativeColor.dart';
import 'package:chamgohae1/Trend/Trend.dart';
import 'package:url_launcher/url_launcher.dart';


void onBannerPressed(BuildContext context, int index) {
  switch (index) {
    case 0:
      // 첫 번째 배너를 클릭했을 때의 동작
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Bookmain(); // 첫 번째 페이지로 이동
      }));
      break;
    case 1:
      // 두 번째 배너를 클릭했을 때의 동작
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return Trend(); // 두 번째 페이지로 이동
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
                buildClickableContainer(
                  context,
                  'assets/Book.png',
                  '논문 정보 사이트',
                  '과제 및 보고서를 작성할 때 논문을 참고하여 퀄리티를 높일 수 있습니다',
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Bookmain()));
                  },
                ),
                buildClickableContainer(
                  context,
                  'assets/Trend.png',
                  '트렌드 분석 사이트',
                  '보고서를 쓰기 전에 트렌드 분석을 통해 주제를 선정하는 데 도움을 받을 수 있습니다',
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Trend()));
                  },
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
                        style: TextStyle(fontSize: 13),
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

List<String> banner = ['assets/Banner/1.png', 'assets/Banner/2.png', 'assets/Banner/3.png', 'assets/Banner/4.png'];

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentPage = 0;

  // 각 배너에 대한 링크 리스트
  List<String> bannerLinks = [
    'https://n.news.naver.com/mnews/article/092/0002313525?sid=105', // Basics 페이지에 대한 링크
    'https://n.news.naver.com/mnews/article/028/0002667097?sid=104',
    'https://n.news.naver.com/mnews/article/003/0012244743?sid=104',
    'https://n.news.naver.com/mnews/article/293/0000049399?sid=105',// DBpia 페이지에 대한 링크
    // 추가적인 배너에 대한 링크 추가
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 배너를 눌렀을 때 현재 페이지의 링크로 이동
        if (currentPage >= 0 && currentPage < bannerLinks.length) {
          launch(bannerLinks[currentPage]);
        }
      },
      child: CarouselSlider.builder(
        itemCount: banner.length,
        options: CarouselOptions(
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
            setState(() {
              currentPage = index;
            });
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
                    (itemIndex + 1).toString() + " / " + banner.length.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}




Widget buildClickableContainer(BuildContext context, String imageAsset, String title, String description, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 150,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),  // 각 컨테이너 사이의 간격을 위한 margin 추가
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),  // 테두리 스타일 지정
        borderRadius: BorderRadius.circular(10.0),  // 테두리의 각도 조절
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageAsset, width: 150, fit: BoxFit.cover),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Text(description,
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
