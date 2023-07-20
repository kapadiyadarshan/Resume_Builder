import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../Global/global_class.dart';
import '../../utils/colors_utils.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

  List languages = ["English","Hindi","Gujarati"];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Personal Details"),
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

                    RadioListTile(
                      activeColor: theme1,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text("Married",
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                        value: "Married",
                        groupValue: Global.maritualStatus,
                        onChanged: (value) {
                          setState(() {
                            Global.maritualStatus = value;
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
                      groupValue: Global.maritualStatus,
                      onChanged: (value) {
                        setState(() {
                          Global.maritualStatus = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    //Languages Known
                    Text(
                      "Languages Known",
                      style: TextStyle(
                          color: theme1,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ...languages.map((e) => CheckboxListTile(
                        title: Text(e,
                        style: const TextStyle(
                          fontSize: 18
                        ),),
                        activeColor: theme1,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: Global.Languages.contains(e),
                        onChanged: (value) {
                          setState(() {
                            if(Global.Languages.contains(e))
                              {
                                Global.Languages.remove(e);
                              }
                            else
                              {
                                Global.Languages.add(e);
                              }
                          });
                        },
                    )
                    ).toList(),
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
      ),
    );
  }
}
