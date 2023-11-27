import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Pubmed extends StatelessWidget {
  const Pubmed({Key? key}) : super(key: key);

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
          title: Text('NCBI'),
          actions: <Widget>[
            Container(
              width: 180,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: InkWell(
                onTap: () {
                  final uri = Uri.parse('https://pubmed.ncbi.nlm.nih.gov/');
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
                    "NCBI / 해외 생명과학 학술지",
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
                    "NCBI는 해외에서 생명과학 분야를 전문으로 다루는 저널",
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
                    "- 구글 계정으로 로그인이 가능해서 회원가입을 하지 않아도 됨 ",
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
                    "- 국내에서는 찾기 힘든 생명과학과 관련된 다양한 자료를 찾을 수 있음",
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
                    "- 자료를 클릭하고 들어갈시, 유사한 자료들을 같이 추천해줌",
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
                  child: Image.asset('assets/Pubmed/슬라이드0002.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Pubmed/슬라이드0003.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Pubmed/슬라이드0004.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Pubmed/슬라이드0005.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Pubmed/슬라이드0006.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Pubmed/슬라이드0007.png'),
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
