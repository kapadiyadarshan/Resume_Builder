import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
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
        backgroundColor: theme1,
        foregroundColor: theme2,
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
                          height: 36,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                            element["title"],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: theme1,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(element["name"]);
                            },
                            icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                              color: theme1,
                            )
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
