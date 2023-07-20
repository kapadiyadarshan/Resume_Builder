import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../Global/global_class.dart';

class Achivements extends StatefulWidget {
  const Achivements({Key? key}) : super(key: key);

  @override
  State<Achivements> createState() => _AchivementsState();
}

class _AchivementsState extends State<Achivements> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    if(Global.achivementController.isEmpty)
    {
      Global.achivementController = List.generate(2, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    super.dispose();

    Global.achivement.clear();

    Global.achivementController.removeWhere((element) => element.text.isEmpty);

    Global.achivementController.forEach((element) {
      Global.achivement.add(element.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Achivements"),
        centerTitle: true,
        leading: const MyBackButton(),
        backgroundColor: theme1,
        foregroundColor: theme2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(
                    Global.achivementController.length, (index) =>
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(6),

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
                              Text("Achivement ${index+1}",
                                style: TextStyle(
                                    color: theme1,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Global.achivementController.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.delete,
                                    color: theme1,
                                  )
                              )
                            ],
                          ),
                          TextFormField(
                            controller: Global.achivementController[index],
                            maxLines: 1,
                            cursorColor: theme1,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                isDense: true,
                                hintText: "Enter Your Achivement",
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
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              Global.achivementController.add(TextEditingController());
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
