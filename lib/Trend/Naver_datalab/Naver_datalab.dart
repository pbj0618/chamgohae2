import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Naver_datalab extends StatelessWidget {
  const Naver_datalab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('네이버 데이터랩',
            ),
          ],
        ),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            width: 180,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: InkWell(
              onTap: () {
                final uri = Uri.parse('https://datalab.naver.com/');
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
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            child: Image.asset('assets/Naver_datalab/슬라이드0001.png'),
          ),
          SizedBox(
            child: Image.asset('assets/Naver_datalab/슬라이드0002.png'),
          ),
          SizedBox(
            child: Image.asset('assets/Naver_datalab/슬라이드0003.png'),
          ),
          SizedBox(
            child: Image.asset('assets/Naver_datalab/슬라이드0004.png'),
          ),
        ],
      ),
    );
  }
}
