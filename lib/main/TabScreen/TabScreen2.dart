import 'package:flutter/material.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:chamgohae1/Book/Basics/KISS/KISS.dart';
import 'package:chamgohae1/Book/Basics/RISS/RISS.dart';
import 'package:chamgohae1/Book/Basics/google_scholar/google_scholar.dart';
import 'package:chamgohae1/Book/Basics/Nanet/Nanet.dart';
import 'package:chamgohae1/Book/Basics/Dlibrary/Dlibrary.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Science/Science_on/Science_on.dart';
import 'package:chamgohae1/Book/Science/Korea_science/Korea_science.dart';
import 'package:chamgohae1/Book/Science/Nature/Nature.dart';
import 'package:chamgohae1/Book/Science/Pubmed/Pubmed.dart';

class TabScreen2 extends StatefulWidget {
  @override
  _TabScreen2State createState() => _TabScreen2State();
}

class _TabScreen2State extends State<TabScreen2> {
  final List<String> buttonNames = [
    'DBpia / 디비피아',
    'Google Scholar / 구글 학술 검색',
    'RISS / 학술연구정보서비스',
    'KISS / 한국학술정보',
    '국회전자도서관',
    '국가전자도서관',
    'KOSSDA / 한국사회과학자료원',
    'KSDC / 한국사회과학데이터센터',
    'CNC 학술정보 / 인문사회 기초자료 종합 DB',
    'KRpia / 한국 지식콘텐츠',
    'Korea science / 한국과학기술정보연구원',
    'Nature / 해외 자연과학 학술지',
    'Science on / 국내 종합과학 학술지',
    'NCBI / 해외 생명과학 학술지',
  ];

  // 각 버튼의 활성화/비활성화 상태를 저장하는 리스트
  List<bool> buttonStates = List.generate(14, (index) => false);

  // 각 하트 아이콘의 활성화/비활성화 상태를 저장하는 리스트
  List<bool> heartIconStates = List.generate(14, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          14,
              (index) => Column(
            children: [
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // 각 버튼에 따라 다른 페이지로 이동
                  navigateToDifferentPage(context, index);
                  // 버튼 활성화/비활성화 상태를 토글
                  setState(() {
                    buttonStates[index] = !buttonStates[index];
                  });
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Color(0xffB3995D)),
                  fixedSize: Size(450, 70),
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(buttonNames[index]), // 왼쪽에 텍스트 설정
                    IconButton(
                      onPressed: () {
                        // 하트 아이콘을 눌렀을 때 수행할 동작 추가
                        // 예를 들어, 즐겨찾기 기능 등
                        print('하트 아이콘 눌림');
                        // 하트 아이콘 활성화/비활성화 상태를 토글
                        setState(() {
                          heartIconStates[index] = !heartIconStates[index];
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: heartIconStates[index] ? Colors.red : Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  // 각 버튼에 따라 다른 페이지로 이동하는 함수
  void navigateToDifferentPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DBpia()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => google_scholar()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RISS()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KISS()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Nanet()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dlibrary()),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Kossda()),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Ksdc()),
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cnc()),
        );
        break;
      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KRpia()),
        );
        break;
      case 10:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Korea_science()),
        );
        break;
      case 11:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Nature()),
        );
        break;
      case 12:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Science_on()),
        );
        break;
      case 13:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pubmed()),
        );
        break;
    }
  }
}
