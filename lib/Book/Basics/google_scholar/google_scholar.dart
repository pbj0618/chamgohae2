import 'package:flutter/material.dart';

class google_scholar extends StatelessWidget {
  const google_scholar({super.key});

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
          title: Text('Google Scholar / 구글 학술 검색'),
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
                Text("Google Scholar / 구글 학술 검색",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                ),
                Text("구글이 운용하는 학술검색 전용 사이트",
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
                Text("- 영어 논문 검색에 유용함 ",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text("- 모든 논문의 피인용 수(사용 수)를 볼 수 있음",
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
                  child: Image.asset('assets/google_scholar/슬라이드0002.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/google_scholar/슬라이드0003.png'),
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                ),
                SizedBox(
                  child: Image.asset('assets/google_scholar/슬라이드0004.png'),
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
                  child: Text("위 사이트는 별도의 인증없이 무료로 이용하실 수 있습니다.",
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
