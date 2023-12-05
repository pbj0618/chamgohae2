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
    QnAItem(question: '질문 3: 보고서 작성에서 논문 사용은 왜 중요한가요?',
        answer: '답변 3: 논문은 신뢰성과 깊이 있는 정보를 제공하는 주요 자료로 사용됩니다. '
            '보고서 작성에서 논문을 활용함으로써, 실증적인 근거와 전문성을 부여할 수 있습니다. '
            '논문은 특정 주제에 대한 최신 연구 동향과 전문 지식을 담고 있어서, 작성자가 주장하려는 주제에 대한 근거를 강화하고 학술적인 논리를 구축하는 데 도움이 됩니다. '
            '또한, 논문을 인용함으로써 다른 연구자들과의 학술적 대화에 참여하게 되어 학문적인 커뮤니케이션에 기여합니다. '
            '이러한 측면들을 통해 보고서에 논문을 적절히 활용하는 것은 학문적인 신뢰성을 높이고 품질 있는 보고서 작성에 기여합니다.'
    ),
    QnAItem(question: '질문 4: 트렌드 분석은 보고서 작성에 어떻게 도움이 될 수 있나요?',
        answer: '답변 4: 트렌드 분석은 보고서 작성에 핵심적인 역할을 합니다. '
            '먼저, 트렌드 분석을 통해 현재 시장이나 환경의 동향을 파악할 수 있습니다. '
            '이를 통해 보고서 작성자는 자신의 주제와 연관된 최신 이슈나 사회적 변화에 대한 이해를 갖게 되어, 보다 현실적이고 적시적인 내용을 제시할 수 있습니다. '
            '또한, 트렌드 분석은 미래 예측에 도움을 주므로, 해당 분야의 전망을 포함한 보고서를 작성하는 데 유용합니다. '
            '트렌드를 반영한 보고서는 독자에게 더 많은 가치를 제공하며, 신뢰성 있는 정보를 제시하는 데 도움이 됩니다.'),
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
