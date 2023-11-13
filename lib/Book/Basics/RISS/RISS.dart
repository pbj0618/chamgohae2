import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RISS extends StatelessWidget {
  const RISS({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    List<String> howuse = [
      "사이트 설명",
      "사이트 사용법",
      "사이트 연계 확인",
    ];

    return DefaultTabController(
      length: howuse.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('RISS'),
          actions: <Widget>[
          ],
          bottom : TabBar(
            tabs: List.generate(
                howuse.length,
                    (index) => Tab(
                  text: howuse[index],
                )
            ),
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                ),
                Text("RISS / 학술 정보 연구 서비스",
                  style: TextStyle(
                    fontSize: 15,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w900,
                ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                ),
                Text("전국 대학이 생산하고 보유하며 구독하는 학술자원을 공동으로 이용할 수 있도록 개방된 사이트",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                ),
                Text("사이트 특징",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                ),
                Text("- 집으로 직접 배송시키거나, 근처 도서관에서 대출이 가능함. 다른 사이트와 연계되어있는 경우가 많음 ",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text("- 일부 논문은 음성지원이 되는 경우도 있음",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),

            ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0002.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0003.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0004.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0005.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0006.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0007.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0008.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0009.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0010.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/RISS/슬라이드0011.png'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  child: Text("위 사이트는 무료가 대부분이나, 유료는 이어진 사이트에서 인증할 수 있습니다",
                    textAlign:  TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
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
