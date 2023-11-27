import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Science_on extends StatelessWidget {
  const Science_on({Key? key}) : super(key: key);



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
          title: Text('Science on'),
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
                  Uri.parse('https://scienceon.kisti.re.kr/main/mainForm.do');
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
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: Text(
                    "Science_on",
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
                    "과학기술정보, 연구데이터, 정보분석 및 연구인프라를 연계·융합하여 연구개발 전주기를 지원하는 지능형 연구자원 공유·활용 플랫폼",
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
                    "- 국내외 논문, 특허정보, 국가 R&D 보고서, 동향정보, 연구자정보 등을 제공함",

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
                    "- 주요 지식인프라 기능들을 쉽게 탐색할 수 있도록 다양한 분류체계를 구성하여 이용자에게 제공함",
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
                  child: Image.asset('assets/Science_on/슬라이드0002.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Science_on/슬라이드0003.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Science_on/슬라이드0004.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Science_on/슬라이드0005.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Science_on/슬라이드0006.png'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("위 사이트는 무료가 대부분이나, 유료는 이어진 사이트에서 인증할 수 있습니다",
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
