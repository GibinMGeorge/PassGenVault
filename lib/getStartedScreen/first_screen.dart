import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:password_manager/getStartedScreen/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151922),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.security_rounded,
                  color: Colors.blueGrey.shade50,
                  size:
                  MediaQuery.of(context).size.width < 800 ? 220.0 : 240.0,
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Passhub - Password Manager',
              style: TextStyle(
                  color: Colors.white,fontFamily: 'Ubuntu',
                  fontSize:
                      MediaQuery.of(context).size.width < 800 ? 30.0 : 36.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'A Complete Solution for securely Managing Your Passwords',
              style: TextStyle(
                  color: Colors.grey,fontFamily: 'Ubuntu',
                  fontSize:
                  MediaQuery.of(context).size.width < 800 ? 24.0 : 30.0),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => SecondScreen())),
                  child: Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width - 70.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff2aa7f3), Color(0xff2463f6)]),
                        borderRadius: BorderRadius.circular(35.0)),
                    child: Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(color: Colors.white, fontSize: 24.0,fontFamily: 'Ubuntu',),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
