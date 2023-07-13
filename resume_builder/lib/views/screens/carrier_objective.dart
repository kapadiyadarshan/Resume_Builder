import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrier Objective"),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
    );
  }
}
