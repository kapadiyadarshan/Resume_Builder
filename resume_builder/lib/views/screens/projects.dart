import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../Global/global_class.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Projects"),
          centerTitle: true,
          leading: const MyBackButton(),
          backgroundColor: theme1,
          foregroundColor: theme2,
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme2,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(5, 5)
                      ),
                    ]
                ),
                child: Form(
                  key: formKey,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Project title
                      Text(
                        "Project Title",
                        style: TextStyle(
                            color: theme1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        initialValue: Global.projectTitle,
                        maxLines: 1,
                        cursorColor: theme1,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: "Resume Builder App",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: theme1,
                                  width: 2,
                                )
                            )
                        ),
                        onChanged: (value) {
                          setState(() {
                            Global.projectTitle = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Roles
                      Text(
                        "Roles",
                        style: TextStyle(
                            color: theme1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        initialValue: Global.pro_roles,
                        maxLines: 1,
                        cursorColor: theme1,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: "Organize Team Members, Code Analysis",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: theme1,
                                width: 2,
                              ),
                            )
                        ),
                        onChanged: (value) {
                          setState(() {
                            Global.pro_roles = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Technologies
                      Text(
                        "Technologies",
                        style: TextStyle(
                            color: theme1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        initialValue: Global.technologies,
                        maxLines: 1,
                        cursorColor: theme1,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: "5 - Programmers",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: theme1,
                                width: 2,
                              ),
                            )
                        ),
                        onChanged: (value) {
                          setState(() {
                            Global.technologies = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Project Description
                      Text(
                        "Project Description",
                        style: TextStyle(
                            color: theme1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        initialValue: Global.pro_description,
                        maxLines: 3,
                        cursorColor: theme1,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: "Enter Your Project Description",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: theme1,
                                width: 2,
                              ),
                            )
                        ),
                        onChanged: (value) {
                          setState(() {
                            Global.pro_description = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
