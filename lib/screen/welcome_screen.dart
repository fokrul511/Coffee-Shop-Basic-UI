import 'package:coffe_shope/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Text(
              'Coffee shop',
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  'Felling Low? Take a sip of Coffee',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                    (route) => false);
              },
              child: Text('Get Start'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE57734),
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                textStyle: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
