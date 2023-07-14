import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/utils/routes_utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  ChangePage()
  {
    Timer.periodic(Duration(seconds: 4), (timer) {
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
            const Spacer(
              flex: 2,
            ),
            Image.asset("assets/images/Resume (1).gif",
            scale: 1.3,
            ),
            Text("Resume Builder",
            style: TextStyle(
              color: theme1,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(
              height: 36,
            ),
            SpinKitWaveSpinner(
              color: theme1,
              size: 64,
              waveColor: theme1,
              trackColor: Colors.grey.shade100,
            ),
            const Spacer(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
