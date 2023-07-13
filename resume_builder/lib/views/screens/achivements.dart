import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Achivements extends StatefulWidget {
  const Achivements({Key? key}) : super(key: key);

  @override
  State<Achivements> createState() => _AchivementsState();
}

class _AchivementsState extends State<Achivements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Achivements"),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
    );
  }
}
