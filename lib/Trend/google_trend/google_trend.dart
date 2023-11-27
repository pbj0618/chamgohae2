import 'package:chamgohae1/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae1/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae1/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae1/Book/Society/Ksdc/Ksdc.dart';
import 'package:flutter/material.dart';

class google_trend extends StatelessWidget {
  const google_trend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('구글 트렌드',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0001.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0002.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0003.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0004.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0005.png'),
          ),
        ],
      ),
    );
  }
}
