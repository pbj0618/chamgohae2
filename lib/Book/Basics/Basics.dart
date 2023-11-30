import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:chamgohae1/Book/Basics/RISS/RISS.dart';
import 'package:chamgohae1/Book/Basics/KISS/KISS.dart';
import 'package:chamgohae1/Book/Basics/Dlibrary/Dlibrary.dart';
import 'package:chamgohae1/Book/Basics/google_scholar/google_scholar.dart';
import 'package:chamgohae1/Book/Basics/Nanet/Nanet.dart';

import 'package:flutter/material.dart';

class Basics extends StatelessWidget {
  const Basics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기초 자료 사이트'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          buildClickableContainer(
            context,
            'Dbpia.png',
            'DBpia',
            '전자저널 논문, 참고 자료, 등을 검색할 수 있는 유/무료 통합 플랫폼 논문 사이트',
                () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DBpia()));
            },
          ),
          buildClickableContainer(
            context,
            'Google.png',
            'Google Scholar / 구글 학술 검색',
            '구글이 운용하는 학술검색 전용 사이트',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => google_scholar()));
            },
          ),
          buildClickableContainer(
            context,
            'Riss.png',
            'RISS / 학술 정보 연구 서비스',
            '전국 대학이 생산하고 보유하며 구독하는 학술자원을 공동으로 이용할 수 있도록 개방된 사이트',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RISS()));
            },
          ),
          buildClickableContainer(
            context,
            'Kiss.png',
            'KISS / 한국학술정보',
            '대한민국 최초의 학술 데이터베이스 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => KISS()));
            },
          ),
          buildClickableContainer(
            context,
            'Nanet.png',
            '국회전자도서관',
            '각종 목록, 색인 등 국가서지데이터베이스를 구축하며 석박사학위논문을 비롯한 원문 데이터베이스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Nanet()));
            },
          ),
          buildClickableContainer(
            context,
            'Country.png',
            '국가전자도서관',
            '국내 주요 전자도서관에서 구축한 디지털 콘텐츠의 공유 및 공동 활용 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dlibrary()));
            },
          ),
        ],
      ),
    );
  }

  Widget buildClickableContainer(BuildContext context, String imageAsset, String title, String description, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),  // 각 컨테이너 사이의 간격을 위한 margin 추가
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),  // 테두리 스타일 지정
          borderRadius: BorderRadius.circular(10.0),  // 테두리의 각도 조절
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 150, fit: BoxFit.cover),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Text(description,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

