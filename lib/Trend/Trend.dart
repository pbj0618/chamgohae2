import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:chamgohae1/Trend/Naver_academy/Naver_academy.dart';
import 'package:chamgohae1/Trend/Naver_datalab/Naver_datalab.dart';
import 'package:chamgohae1/Trend/google_trend/google_trend.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';

class Trend extends StatelessWidget {
  const Trend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('트렌드 분석 사이트'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          buildClickableContainer(
            context,
            'assets/Googletrend.png',
            '구글 트렌드',
            '구글에서 서비스 중인 검색어 및 동영상 기반 빅데이터 분석 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => google_trend()));
            },
          ),
          buildClickableContainer(
            context,
            'assets/Naver.png',
            '네이버 학술정보 연구트렌드 분석',
            '학술 기사, 논문, 학회, 및 학술지에 대한 학술 검색 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Naver_academy()));
            },
          ),
          buildClickableContainer(
            context,
            'assets/Naverdatalab.png',
            '네이버 데이터랩',
            '네이버의 검색 트렌드 및 급상승검색어 등 검색 관련 제공 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Naver_datalab()));
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
