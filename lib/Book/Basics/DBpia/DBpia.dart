import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DBpia extends StatelessWidget {
  const DBpia({Key? key}) : super(key: key);

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
          title: Text('DBpia'),
          actions: <Widget>[
            Container(
              width: 180,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: InkWell(
                onTap: () {
                  final uri = Uri.parse('https://www.dbpia.co.kr/');
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
                  "DBpia",
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
                  "전자저널 논문, 참고 자료, 등을 검색할 수 있는 유/무료 통합 플랫폼 논문 사이트",
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
                  "- 검색 시 항목별 검색으로 주제분류 / 간행물 / 간행기관 / 저자 등으로 구분해서 검색이 가능함 ",
                  
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
                  "- 개인 맞춤 추천 항목이 있어 원하는 주제에 대한 기초 자료를 받아볼 수 있음",
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
                  child: Image.asset('assets/DBpia/슬라이드0002.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/DBpia/슬라이드0003.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/DBpia/슬라이드0004.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/DBpia/슬라이드0005.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/DBpia/슬라이드0006.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/DBpia/슬라이드0007.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/DBpia/슬라이드0008.png'),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(5.0),
                ),
                InkWell(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        child: Text(
                          '소속 기관 / 학교 연계 확인',
                          textAlign:  TextAlign.center,
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
                    final uri =
                    Uri.parse('https://www.dbpia.co.kr/member/b2bLogin');
                    launchUrl(uri);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
