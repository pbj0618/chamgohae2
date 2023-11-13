import 'package:chamgohae1/Book/Basics/DBpia/DBpia.dart';
import 'package:chamgohae1/Book/Basics/RISS/RISS.dart';
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: buttonLabels.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    moveButtonToTop(index);
                    if (index > 0) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RISS()));
                      // 페이지 이동 로직 추가
                      if (index == 1) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DBpia()));
                      } else if (index == 2) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DBpia()));
                      }
                      // 다른 페이지에 대한 로직도 추가할 수 있습니다.
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(buttonLabels[index]),
                      IconButton(
                        onPressed: () {
                          toggleHeart(index);
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
            ],
          ),
        );
      },
    );
  }
}
