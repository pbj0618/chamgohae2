import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({super.key});

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text('Kakao Logout',
              style: GoogleFonts.acme(fontSize: 24,
              color: Colors.white
              ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                shadowColor: Colors.blueGrey,
                elevation: 10,
                side: BorderSide(
                  color: Colors.black12,
                  style: BorderStyle.solid,
                  width: 2,
                    strokeAlign: BorderSide.strokeAlignInside
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            Text('박범준 Loggined',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black38
              ),
            ),
          ],
        ),
      ),
    );
  }
}
