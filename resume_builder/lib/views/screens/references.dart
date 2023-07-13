import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reference"),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
    );
  }
}
