import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project"),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
    );
  }
}
