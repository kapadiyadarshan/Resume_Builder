import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {

  int listEdu = 1;

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
            children: List.generate(listEdu, (index) =>
                Column(
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
                ),
            )
          ),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              listEdu++;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: theme1,
            foregroundColor: theme2,
          ),
          icon: Icon(Icons.add),
          label: Text("Add")
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
