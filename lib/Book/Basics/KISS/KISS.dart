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
          title: Text('KISS'),
          actions: <Widget>[
            Container(
              width: 180,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: InkWell(
                onTap: () {
                  final uri =
                      Uri.parse('https://kiss.kstudy.com');
                  launchUrl(uri);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '사이트 이동',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                      color: Color(0xff002244),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: List.generate(
                howuse.length,
                (index) => Tab(
                      text: howuse[index],
                    )),
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
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: Text(
                    "KISS / 한국학술정보",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "대한민국 최초의 학술 데이터베이스 서비스",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: Text(
                    "사이트 특징",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                  child: Text(
                    "- 인기자료들을 계열별로 볼 수 있음",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 4, 10, 0),
                  child: Text(
                    "- 무료 논문이더라도 로그인을 해야 열람이 가능함",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 4, 10, 0),
                  child: Text(
                    "- 약 155만 건의 학술 데이터베이스를 제공함",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/KISS/슬라이드0002.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/KISS/슬라이드0003.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/KISS/슬라이드0004.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/KISS/슬라이드0005.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/KISS/슬라이드0006.png'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "위 사이트는 교내 IP 또는, 귀하 학교 도서관 홈페이지에서 접속하시기 바랍니다",
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
