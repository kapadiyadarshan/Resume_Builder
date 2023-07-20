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

    if(Global.course.isEmpty)
    {
      Global.course = List.filled(1, TextEditingController(),growable: true);
    }
    if(Global.school.isEmpty)
    {
      Global.school = List.filled(1, TextEditingController(),growable: true);
    }
    if(Global.grade.isEmpty)
    {
      Global.grade = List.filled(1, TextEditingController(),growable: true);
    }
    if(Global.year.isEmpty)
    {
      Global.year = List.filled(1, TextEditingController(),growable: true);
    }
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
            children: List.generate(Global.course.length, (index) => Education(index: index)),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              Global.course.add(TextEditingController());
              Global.school.add(TextEditingController());
              Global.grade.add(TextEditingController());
              Global.year.add(TextEditingController());
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

  Widget Education({required int index})
  {
    return Column(
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
                          Global.course.removeAt(index);
                          Global.school.removeAt(index);
                          Global.grade.removeAt(index);
                          Global.year.removeAt(index);
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
                controller: Global.course[index],
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
                controller: Global.school[index],
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
                controller: Global.grade[index],
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
                controller: Global.year[index],
                maxLines: 1,
                cursorColor: theme1,
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
    );
  }
}
