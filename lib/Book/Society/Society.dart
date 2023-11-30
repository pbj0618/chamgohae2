import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:flutter/material.dart';

class Society extends StatelessWidget {
  const Society({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인문 사회 계열 사이트'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          buildClickableContainer(
            context,
            'Cnc.png',
            'CNC 학술정보',
            '핵심연구기관의 수십 년 간의 연구성과들을 수집 구축한 학술원문정보 데이터베이스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kossda()));
            },
          ),
          buildClickableContainer(
            context,
            'Ksdc.png',
            'KSDC / 한국사회과학데이터센터',
            'KSDC DB는 한국의 대표적인 학술 DB로서 주요 설문조사 및 통계 데이터를 수집 및 표본화하여 제공하는 통합 DB 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kossda()));
            },
          ),
          buildClickableContainer(
            context,
            'Kossda.png',
            'Kossda / 한국사회과학자료원',
            '연구기관들과 개인 연구자들이 산출하는 조사자료, 통계자료, 등의 연구자료를 수집한 디지털 DB 서비스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kossda()));
            },
          ),
          buildClickableContainer(
            context,
            'Krpia.png',
            'KRpia / 한국 지식콘텐츠',
            '역사, 문학, 민속문화, 한의학, 자연동식물, 고전 등을 포함하는 한국학 분야 데이터베이스',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kossda()));
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
