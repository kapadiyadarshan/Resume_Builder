import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Declaration"),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Declaration",
                          style: TextStyle(
                              color: theme1,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Switch(
                          activeColor: theme1,
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            }
                          );
                        },)
                      ],
                    ),
                    Visibility(
                      visible: switchValue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                              alignment: Alignment.center,
                              child: Image.asset("assets/icons/target.png")
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            maxLines: 4,
                            cursorColor: theme1,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                isDense: true,
                                hintText: "Description",
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
                          Divider(
                            thickness: 2,
                            color: theme1,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Date",
                            style: TextStyle(
                                color: theme1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          //Date
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
                          Text(
                            "Place(Interview Venue/City)",
                            style: TextStyle(
                                color: theme1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          //Place
                          TextFormField(
                            maxLines: 1,
                            cursorColor: theme1,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                isDense: true,
                                hintText: "Eg.Banglore",
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
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
