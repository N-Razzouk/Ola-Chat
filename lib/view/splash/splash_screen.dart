import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    timer = Timer(const Duration(seconds: 2), () {
      popAllAndPush(context, const WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: const [
                Hero(
                  tag: 'blue182',
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 182,
                  ),
                ),
                Hero(
                  tag: 'black182',
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 182,
                  ),
                ),
                Hero(
                  tag: 'black152',
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 152,
                  ),
                ),
                Hero(
                  tag: 'blue152',
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 152,
                  ),
                ),
                Text(
                  'Ola',
                  style: TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
