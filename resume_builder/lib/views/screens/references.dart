import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../Global/global_class.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Reference"),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reference Name",
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
                      initialValue: Global.ref_name,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        isDense: true,
                          hintText: "Narendrabhai Modi",
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
                          Global.ref_name = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Designation",
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
                      initialValue: Global.ref_designation,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: "Full Stack Developer",
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
                          Global.ref_designation = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Organization/Institute",
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
                      initialValue: Global.ref_organization,
                      maxLines: 1,
                      cursorColor: theme1,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: "Red & White Multimedia Education",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: theme1,
                              width: 2,
                            ),
                          ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          Global.ref_organization = value;
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
