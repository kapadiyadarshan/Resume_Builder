import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../Global/global_class.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Experience"),
          centerTitle: true,
          leading: const MyBackButton(),
          backgroundColor: theme1,
          foregroundColor: theme2,
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company Name",
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
                      initialValue: Global.companyName,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: "Enter Your Company Name",
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
                          Global.companyName = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
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
                      initialValue: Global.roles,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: "Enter Your Role",
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
                          Global.roles = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Joined Date",
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
                      initialValue: Global.joinedDate,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: "DD/MM/YYYY",
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
                          Global.joinedDate = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Exit Date",
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
                      initialValue: Global.exitDate,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: "DD/MM/YYYY",
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
                          Global.exitDate = value;
                        });
                      },
                    ),
                  ],
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
