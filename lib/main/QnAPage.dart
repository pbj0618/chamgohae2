import 'package:flutter/material.dart';


class QnAPage extends StatelessWidget {
  final List<QnAItem> qaItems = [
    QnAItem(
      question: '질문 1: Flutter란 무엇인가요?',
      answer: '답변 1: Flutter는 Google에서 개발한 오픈 소스 UI 프레임워크로, 모바일 앱 및 웹 앱을 개발하기 위한 도구입니다.',
    ),
    QnAItem(
      question: '질문 2: 플러터(Flutter)와 다트(Dart) 언어는 어떤 관계가 있나요?',
      answer: '답변 2: 플러터 앱은 다트 언어로 개발되며, 플러터 프레임워크는 다트 언어를 사용하여 앱의 UI를 작성할 수 있도록 제공합니다.',
    ),
    // 추가 질문 및 답변 아이템을 필요에 따라 추가할 수 있습니다.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Q&A 페이지'),
      ),
      body: ListView.builder(
        itemCount: qaItems.length,
        itemBuilder: (context, index) {
          final item = qaItems[index];
          return ExpansionTile(
            title: Text(item.question),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(item.answer),
              ),
            ],
          );
        },
      ),
    );
  }
}

class QnAItem {
  final String question;
  final String answer;

  QnAItem({
    required this.question,
    required this.answer,
  });
}
