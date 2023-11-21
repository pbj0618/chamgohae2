import 'package:flutter/material.dart';
import 'package:chamgohae1/Widgethouse/TextformFieldWidget.dart';
import 'package:chamgohae1/main/TabScreen/TabScreen1.dart';

class Customform extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: const [
          CustomTextFormField("Email"),
          SizedBox(height: medium_gap),
          CustomTextFormField("Password"),
          SizedBox(height: large_gap),
    ],
    ),
    );
  }
}