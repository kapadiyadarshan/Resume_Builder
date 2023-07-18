import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({Key? key}) : super(key: key);

  @override
  State<TechnicalSkills> createState() => _TechnicalSkillsState();
}

class _TechnicalSkillsState extends State<TechnicalSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Technical Skills"),
        centerTitle: true,
        leading: const MyBackButton(),
        backgroundColor: theme1,
        foregroundColor: theme2,
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
