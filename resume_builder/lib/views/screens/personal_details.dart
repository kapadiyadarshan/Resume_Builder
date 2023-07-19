import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../utils/colors_utils.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

  String? maritualStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
        centerTitle: true,
        leading: const MyBackButton(),
        backgroundColor: theme1,
        foregroundColor: theme2,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date of Birth",
                    style: TextStyle(
                        color: theme1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Date of Birth
                  TextFormField(
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
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Marital Status
                  Text(
                    "Marital Status",
                    style: TextStyle(
                        color: theme1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RadioListTile(
                    activeColor: theme1,
                    title: const Text("Married",
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                      value: "Married",
                      groupValue: maritualStatus,
                      onChanged: (value) {
                        setState(() {
                          maritualStatus = value;
                        });
                      },
                  ),
                  RadioListTile(
                    activeColor: theme1,
                    title: const Text("Single",
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                    value: "Single",
                    groupValue: maritualStatus,
                    onChanged: (value) {
                      setState(() {
                        maritualStatus = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Nationality",
                    style: TextStyle(
                        color: theme1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Nationality
                  TextFormField(
                    maxLines: 1,
                    cursorColor: theme1,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "Indian",
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
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
