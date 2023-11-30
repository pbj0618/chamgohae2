import 'package:chamgohae1/Book/Science/Nature/Nature.dart';
import 'package:chamgohae1/Book/Science/Pubmed/Pubmed.dart';
import 'package:chamgohae1/Book/Science/Korea_science/Korea_science.dart';
import 'package:chamgohae1/Book/Science/Science_on/Science_on.dart';
import 'package:flutter/material.dart';

class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자연 과학 계열 사이트'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          buildClickableContainer(
            context,
            'Koreascience.png',
            'Korea science / 한국과학기술정보연구원',
            '국내 과학기술 학술지 레퍼런스 연계 플랫폼',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Korea_science()));
            },
          ),
          buildClickableContainer(
            context,
            'Nature.png',
            'Nature / 해외 자연과학 학술지',
            '세계 3대 학술지로 불리는 해외에서 저명한 종합 과학 저널',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Nature()));
            },
          ),
          buildClickableContainer(
            context,
            'Scienceon.png',
            'Science_on',
            '과학기술정보, 연구데이터, 정보분석 및 연구인프라를 연계·융합하여 연구개발 전주기를 지원하는 지능형 연구자원 공유·활용 플랫폼',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Science_on()));
            },
          ),
          buildClickableContainer(
            context,
            'Ncbi.png',
            'NCBI / 해외 생명과학 학술지',
            '해외에서 생명과학 분야를 전문으로 다루는 저널',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Pubmed()));
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
