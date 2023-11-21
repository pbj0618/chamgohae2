import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    Widget buttonArea = Center(
      child: ElevatedButton(
        child: Text('Kakao Login',
          style: GoogleFonts.acme(fontSize: 30, color: Colors.black87),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amberAccent,
            foregroundColor: Colors.black87,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9)
            ),
            elevation: 5
        ),
        autofocus: true,
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/logout');
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: buttonArea,
    );




  }
}