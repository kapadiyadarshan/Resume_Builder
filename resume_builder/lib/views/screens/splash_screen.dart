import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/utils/routes_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  ChangePage()
  {
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.HomePage);
      timer.cancel();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChangePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset("assets/images/Resume.gif",
            scale: 1.3,
            ),
            const SizedBox(
              height: 24,
            ),
            Text("Resume Builder",
            style: TextStyle(
              color: theme1,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            const Spacer(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
