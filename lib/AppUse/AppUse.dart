import 'package:flutter/material.dart';
import 'package:chamgohae1/main.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';

class AppUse extends StatelessWidget {
  const AppUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('어플 사용법',
          style: TextStyle(fontStyle: FontStyle.italic
        ),
        ),
        centerTitle: true,
      ),

    );
  }
}
