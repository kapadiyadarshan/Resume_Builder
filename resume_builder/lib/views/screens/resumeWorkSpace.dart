import 'package:flutter/material.dart';
import 'package:resume_builder/utils/routes_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class ResumeWorkSpace extends StatefulWidget {
  const ResumeWorkSpace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkSpace> createState() => _ResumeWorkSpaceState();
}

class _ResumeWorkSpaceState extends State<ResumeWorkSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Workspace"),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),

          child: Column(
            children: MyRoutes.BuildOptions.map((element) =>
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(element["icon"],
                          height: 32,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                            element["title"],
                          style: const TextStyle(
                            fontSize: 16
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(element["name"]);
                            },
                            icon: const Icon(Icons.arrow_forward_ios_sharp)
                        )
                      ],
                    ),
                  ),
                )
            ).toList(),
          ),
        ),
      ),
    );
  }
}
