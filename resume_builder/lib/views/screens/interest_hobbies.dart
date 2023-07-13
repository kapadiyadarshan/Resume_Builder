import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class InterestHobbies extends StatefulWidget {
  const InterestHobbies({Key? key}) : super(key: key);

  @override
  State<InterestHobbies> createState() => _InterestHobbiesState();
}

class _InterestHobbiesState extends State<InterestHobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interest/Hobbies"),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
    );
  }
}
