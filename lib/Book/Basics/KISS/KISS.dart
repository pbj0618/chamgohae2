import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KISS extends StatelessWidget {
  const KISS({super.key});

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
          title: Text('KISS / 한국학술정보'),
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
                Text("KISS / 한국학술정보",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                ),
                Text("대한민국 최초의 학술 데이터베이스 서비스",
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
                Text("- 인기자료들을 계열별로 볼 수 있음 ",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text("- 무료 논문이더라도 로그인을 해야 열람이 가능함",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text("약 155만 건의 학술 데이터베이스를 제공함",
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
                  child: Image.asset('assets/kISS/슬라이드0002.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/kISS/슬라이드0003.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/kISS/슬라이드0004.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/kISS/슬라이드0005.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/kISS/슬라이드0006.png'),
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
                  child: Text("위 사이트는 교내 IP 또는, 귀하 학교 홈페이지에서 접속하시기 바랍니다.",
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