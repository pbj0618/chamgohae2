import 'package:carousel_slider/carousel_slider.dart';
import 'package:chamgohae1/main.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chamgohae1/Book/Basics/Basics.dart';
import 'package:chamgohae1/Book/Science/Science.dart';
import 'package:chamgohae1/Book/Society/Society.dart';

class Bookmain extends StatelessWidget {
  const Bookmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('참고문헌 사이트'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          buildClickableContainer(
            context,
            'assets/Basic.png',
            '기초 자료 사이트',
            '여러 사회학, 과학의 기초자료들을 볼 수 있습니다',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Basics()));
            },
          ),
          buildClickableContainer(
            context,
            'assets/Social.png',
            '인문 사회 자료 사이트',
            '인문학, 정치학, 사회학, 역사학, 철학 등 인문 사회 전문 자료들을 볼 수 있습니다',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Society()));
            },
          ),
          buildClickableContainer(
            context,
            'assets/Science.png',
            '자연 과학 자료 사이트',
            '자연과학, 생명학, 공학 등 과학 계열 전문 자료들을 볼 수 있습니다',
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Science()));
            },
          ),

        ],
      ),
    );
  }
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
