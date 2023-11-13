import 'package:flutter/material.dart';


class QnAPage extends StatelessWidget {
  final List<QnAItem> qaItems = [
    QnAItem(
      question: '질문 1: 학교 세특준비하는데 꼭 논문을 참고해야할까요?',
      answer: '답변 1: 사실 논문을 꼭 참고하지않더라도 인터넷 서핑이나 유튜브 등을 활용하여도 많은 자료들을 얻을 수 있긴합니다. '
          '하지만, 인터넷과 유튜브는 누구든지 자료를 올릴 수 있다는 특성 때문에 잘못된 사실이 포함될 수 있어 공신력이 떨어집니다. '
          '또한 논문을 참고한다면 내용이 한 층 더 깊어지고, 전문성이 올라가기 때문에 비교적 쉽게 할 수 있는 인터넷 서핑이나 유튜브를 활용할 때에 비해 수준 높은 세특을 만들 수 있을 것 입니다.',
    ),
    QnAItem(
      question: '질문 2: 이 어플을 활용해야하는 이유가 뭐죠?',
      answer: '답변 2: 참고해 어플은 주로 과제 및 보고서를 작성해야하는 고등학생 및 대학생들을 위한 어플입니다.'
          '주로 논문을 참고하거나 관련된 사이트를 찾고 싶을 때, 이 사이트의 사용법을 알고 싶을 때, 사용하기 편리합니다.'
          '이 어플을 활용하면, 보다 전문적이고 쉽게 참고하여 글을 쓸 수 있을 것입니다.',
    ),
    // 추가 질문 및 답변 아이템을 필요에 따라 추가할 수 있습니다.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Q&A'),
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
