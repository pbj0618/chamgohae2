import 'package:flutter/material.dart';

void main() {
  runApp(TabScreen2());
}

class TabScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ButtonList(),
      ),
    );
  }
}

class ButtonList extends StatefulWidget {
  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  List<String> buttonLabels = List.generate(10, (index) => 'Button $index');
  List<bool> isHeartActiveList = List.generate(10, (index) => false);

  void moveButtonToTop(int index) {
    setState(() {
      String selectedButton = buttonLabels[index];
      buttonLabels.removeAt(index);
      buttonLabels.insert(0, selectedButton);
      isHeartActiveList[index] = true;
    });

    // 페이지 이동 로직 추가
    // 예시로 DBpia 페이지로 이동하도록 설정
    if (index > 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => DBpia()));
    }
  }

  void toggleHeart(int index) {
    setState(() {
      isHeartActiveList[index] = !isHeartActiveList[index];

      if (isHeartActiveList[index]) {
        String selectedButton = buttonLabels[index];
        buttonLabels.removeAt(index);
        isHeartActiveList.removeAt(index);
        buttonLabels.insert(0, selectedButton);
        isHeartActiveList.insert(0, true);
      }
    });
  }

  void sortListByHeart() {
    setState(() {
      List<String> tempLabels = [];
      List<bool> tempHearts = [];

      for (int i = 0; i < buttonLabels.length; i++) {
        if (isHeartActiveList[i]) {
          tempLabels.add(buttonLabels[i]);
          tempHearts.add(true);
        }
      }

      for (int i = 0; i < buttonLabels.length; i++) {
        if (!isHeartActiveList[i]) {
          tempLabels.add(buttonLabels[i]);
          tempHearts.add(false);
        }
      }

      buttonLabels = tempLabels;
      isHeartActiveList = tempHearts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: buttonLabels.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    moveButtonToTop(index);
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      // 버튼 눌렀을 때의 동작
                      // 여기에 필요한 동작 추가
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(buttonLabels[index]),
                        IconButton(
                          onPressed: () {
                            toggleHeart(index);
                            sortListByHeart(); // 하트를 토글할 때마다 정렬 수행
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: isHeartActiveList[index] ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class DBpia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DBpia Page'),
      ),
      body: Center(
        child: Text('This is the DBpia page.'),
      ),
    );
  }
}
