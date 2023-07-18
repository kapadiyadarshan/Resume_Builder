import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Experience"),
        centerTitle: true,
        leading: const MyBackButton(),
        backgroundColor: theme1,
        foregroundColor: theme2,
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
