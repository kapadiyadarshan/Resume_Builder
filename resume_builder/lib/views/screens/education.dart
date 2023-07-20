import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global_class.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {

  @override
  void initState() {
    super.initState();

    if(Global.courseController.isEmpty)
    {
      Global.courseController = List.generate(1, (index) => TextEditingController());
    }
    if(Global.schoolController.isEmpty)
    {
      Global.schoolController = List.generate(1, (index) => TextEditingController());
    }
    if(Global.gradeController.isEmpty)
    {
      Global.gradeController = List.generate(1, (index) => TextEditingController());
    }
    if(Global.yearController.isEmpty)
    {
      Global.yearController = List.generate(1, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    super.dispose();

    Global.course.clear();
    Global.school.clear();
    Global.grade.clear();
    Global.year.clear();

    Global.courseController.removeWhere((element) => element.text.isEmpty);
    Global.schoolController.removeWhere((element) => element.text.isEmpty);
    Global.gradeController.removeWhere((element) => element.text.isEmpty);
    Global.yearController.removeWhere((element) => element.text.isEmpty);

    Global.courseController.forEach((element) {
      Global.course.add(element.text);
    });

    Global.schoolController.forEach((element) {
      Global.school.add(element.text);
    });

    Global.gradeController.forEach((element) {
      Global.grade.add(element.text);
    });

    Global.yearController.forEach((element) {
      Global.year.add(element.text);
    });

    print("--------------------------------");
    print(Global.course);
    print(Global.school);
    print(Global.grade);
    print(Global.year);
    print("--------------------------------");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        centerTitle: true,
        leading: const MyBackButton(),
        backgroundColor: theme1,
        foregroundColor: theme2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(Global.courseController.length, (index) => Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),

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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Education ${index+1}",
                            style: TextStyle(
                                color: theme1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  Global.courseController.removeAt(index);
                                  Global.schoolController.removeAt(index);
                                  Global.gradeController.removeAt(index);
                                  Global.yearController.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete,
                                color: theme1,
                              )
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      // Couse / Degree
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                            {
                              return "Please enter Course/Degree...";
                            }
                          else
                            {
                              return null;
                            }
                        },
                        controller: Global.courseController[index],
                        maxLines: 1,
                        cursorColor: theme1,
                        decoration: InputDecoration(
                            isDense: true,
                            labelText: "Course / Degree",
                            labelStyle: TextStyle(
                                color: theme1
                            ),
                            hintText: "Enter Your Course / Degree",
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
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //School / University
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                            {
                              return "Please enter School/University...";
                            }
                          else
                            {
                              return null;
                            }
                        },
                        controller: Global.schoolController[index],
                        maxLines: 1,
                        cursorColor: theme1,
                        decoration: InputDecoration(
                            isDense: true,
                            labelText: "School / University",
                            labelStyle: TextStyle(
                                color: theme1
                            ),
                            hintText: "Enter Your School / University",
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
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Grade / Score
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter Grade/Score...";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        controller: Global.gradeController[index],
                        maxLines: 1,
                        cursorColor: theme1,
                        decoration: InputDecoration(
                            isDense: true,
                            labelText: "Grade / Score",
                            labelStyle: TextStyle(
                                color: theme1
                            ),
                            hintText: "Enter Your Grade / Score",
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
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Year
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter Year...";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        controller: Global.yearController[index],
                        maxLines: 1,
                        cursorColor: theme1,
                        onFieldSubmitted: (value) {

                        },
                        decoration: InputDecoration(
                            isDense: true,
                            labelText: "Year",
                            labelStyle: TextStyle(
                                color: theme1
                            ),
                            hintText: "Enter Year",
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
            ),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              Global.courseController.add(TextEditingController());
              Global.schoolController.add(TextEditingController());
              Global.gradeController.add(TextEditingController());
              Global.yearController.add(TextEditingController());
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: theme1,
            foregroundColor: theme2,
          ),
          icon: const Icon(Icons.add),
          label: const Text("Add")
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
