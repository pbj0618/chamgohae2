import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TabScreen2 extends StatelessWidget {
  const TabScreen2({Key? key});

  // 함수를 사용하여 링크를 여러 곳에서 재사용할 수 있습니다.
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: Text(
                  '기초자료 사이트 바로가기',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 기초 자료 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.dbpia.co.kr/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'DBpia / 디비피아',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 인문 사회 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://scholar.google.co.kr/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'Google Scholar / 구글 학술 검색',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.riss.kr/index.do');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'RISS / 학술연구정보서비스',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://kiss.kstudy.com');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'KISS / 한국학술정보',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://dl.nanet.go.kr/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            '국회전자도서관',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.dlibrary.go.kr/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            '국가전자도서관',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: Text(
                  '인문사회 사이트 바로가기',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://kossda.snu.ac.kr/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'KOSSDA / 한국사회과학자료원',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.ksdcdb.kr/main.do');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'KSDC / 한국사회과학데이터센터',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.yescnc.com/home/main/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'CNC 학술정보 / 인문사회자료 DB',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.krpia.co.kr/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'KRpia / 한국 지식콘텐츠',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: Text(
                  '자연과학 사이트 바로가기',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://koreascience.kr/main.page');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'Korea science / 한국과학기술정보연구원',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://www.nature.com/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'Nature / 해외 자연과학 학술지',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://scienceon.kisti.re.kr/main/mainForm.do');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'Science on / 국내 종합과학 학술지',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
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
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // 여기를 검은색으로 수정
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // 자연 과학 계열 사이트로 이동하는 링크를 여기에 추가
                          _launchURL('https://pubmed.ncbi.nlm.nih.gov/');
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                          child: Text(
                            'NCBI / 해외 생명과학 학술지',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}