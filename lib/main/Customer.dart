import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('문의하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('제목'),
            TextField(
              decoration: InputDecoration(
                hintText: '문의 내용의 제목을 입력하세요.',
              ),
            ),
            SizedBox(height: 16.0),
            Text('내용'),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: '문의 내용을 입력하세요.',
              ),
            ),
            SizedBox(height: 16.0),
            InkWell(
                onTap: () {
                  final uri =
                  Uri.parse('https://naver.com');
                  launchUrl(uri);
                },
                child: Text('문의하기'),
              ),
          ],
        ),
      ),
    );
  }