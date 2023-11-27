import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Science_library extends StatelessWidget {
  const Science_library({Key? key}) : super(key: key);

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
          title: Text('KSDC'),
          actions: <Widget>[
            Container(
              width: 180,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: InkWell(
                onTap: () {
                  final uri = Uri.parse('https://www.ksdcdb.kr/main.do');
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
                    "KSDC / 한국사회과학데이터센터",
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
                    "KSDC DB는 한국의 대표적인 학술 DB로서 주요 설문조사 및 통계 데이터를 수집 및 표본화하여 제공하는 통합 DB 서비스",
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
                    "- 인문 사회 조사자료 2,200건 (설문지 및 원자료) 통계자료 1,300건 ",
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
                    "- 설문지 작성, 배포, 결과 확인, 자료 분석이 가능함",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                  child: Text(
                    "- 기술통계량, 빈도, 교차, T-TEST, 상관 등 온라인 통계분석이 가능함",
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
                  child: Image.asset('assets/Ksdc/슬라이드0002.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0003.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0004.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0005.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0006.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0007.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0008.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Ksdc/슬라이드0009.png'),
                ),
              ],
            ),
            Column(
              children: [
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
                    Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(5.0),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            child: Text(
                              '소속 기관 / 학교 연계 확인',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Color(0xff002244),
                            padding: EdgeInsets.all(30.0),
                            width: 400,
                          ),
                        ),
                      ),
                      onTap: () {
                        final uri = Uri.parse(
                            'https://www.ksdcdb.kr/intro/introMember.do');
                        launchUrl(uri);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
