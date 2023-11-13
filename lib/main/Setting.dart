import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:chamgohae1/main/main.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/QnApage.dart';

bool vibration = false;

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chamgohae',
          style: TextStyle(
            fontFamily: 'example',
            fontWeight: FontWeight.w200,
            fontSize: 45.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text(
              '공통',
            ),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('언어'),
                value: Text('한국어'),
                onPressed: ((context) {}),
              ),
              SettingsTile.switchTile(
                title: Text('진동'),
                initialValue: vibration,
                onToggle: (value) {
                  setState(() {
                    vibration = !vibration;
                  });
                },
                leading: Icon(Icons.vibration),
              ),
            ],
          ),
          SettingsSection(
            title: Text('계정'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.logout),
                title: Text('로그아웃'),
                onPressed: ((context) {}),
              ),
            ],
          ),
          SettingsSection(
            title: Text('기타'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.star),
                title: Text('앱 평가하기'),
                onPressed: ((context) {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
