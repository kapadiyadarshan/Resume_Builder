import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';
import 'package:image_picker/image_picker.dart';

import '../../Global/global_class.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  int currentIndex = 0;

  RegExp emailRx = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Info"),
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
              // Contact and photo Buttons
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    //Contact
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          setState(() {
                            currentIndex = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (currentIndex == 0) ? theme1 : Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: (currentIndex == 0)
                                ? [
                            BoxShadow(
                                blurRadius: 10,
                                color: theme1
                            )
                            ] : null,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: (currentIndex == 0) ? FontWeight.bold : null,
                              color: (currentIndex == 0) ? theme2 : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    //Photo
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          setState(() {
                            currentIndex = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (currentIndex == 1) ? theme1 : Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: (currentIndex == 1)
                                ? [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: theme1
                              )
                            ] : null,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Photo",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: (currentIndex == 1) ? FontWeight.bold : null,
                              color: (currentIndex == 1) ? theme2 : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              IndexedStack(
                index: currentIndex,
                children: [
                  //Contact Page
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme2,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(5, 5)
                        )
                      ]
                    ),
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,

                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            //Name
                            TextFormField(
                              validator: (value){
                                if(value!.isEmpty)
                                  {
                                    return "Please enter name...";
                                  }
                                else
                                  {
                                    return null;
                                  }
                              },
                              showCursor: true,
                              cursorColor: theme1,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              initialValue: Global.name,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: "Name",
                                labelStyle: TextStyle(
                                  color: theme1
                                ),
                                hintText: "Enter Full Name",
                                prefixIcon: const Icon(
                                  Icons.person,
                                ),
                                prefixIconColor: theme1,
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
                                  Global.name = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 12,
                            ),

                            //Address
                            TextFormField(
                              // controller: addressController,
                              validator: (value){
                                if(value!.isEmpty)
                                  {
                                    return "Please enter address...";
                                  }
                                else
                                  {
                                    return null;
                                  }
                              },
                                keyboardType: TextInputType.streetAddress,
                                textInputAction: TextInputAction.next,
                                initialValue: Global.address,
                                decoration: InputDecoration(
                                  isDense: true,
                                    labelText: "Address",
                                    labelStyle: TextStyle(
                                      color: theme1,
                                    ),
                                    hintText: "Enter Address",
                                    prefixIcon: const Icon(
                                        Icons.location_on_rounded
                                    ),
                                    prefixIconColor: theme1,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: theme1,
                                        width: 2,
                                      )
                                  ),
                                ),
                              onChanged: (value) {
                                setState(() {
                                  Global.address = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 12,
                            ),

                            //Email
                            TextFormField(
                              // controller: emailController,
                              validator: (value){
                                if(value!.isEmpty)
                                  {
                                    return "Please enter email id...";
                                  }
                                else if(!emailRx.hasMatch(value))
                                  {
                                    return "Please enter valid email...";
                                  }
                                else
                                  {
                                    return null;
                                  }
                              },
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                initialValue: Global.email,
                                decoration: InputDecoration(
                                  isDense: true,
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      color: theme1,
                                    ),
                                    hintText: "Enter Email",
                                    prefixIcon: const Icon(
                                        Icons.email_rounded
                                    ),
                                    prefixIconColor: theme1,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: theme1,
                                        width: 2,
                                      )
                                  ),
                                ),
                              onChanged: (value) {
                                setState(() {
                                  Global.email = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 12,
                            ),

                            //Phone
                            TextFormField(
                              // controller: phoneController,
                              validator: (value){
                                if(value!.isEmpty)
                                  {
                                    return "Please enter phone number...";
                                  }
                                else if(value.length < 10)
                                  {
                                    return "Phone Number Must Be Of 10 Digits...";
                                  }
                                else if(value.length > 10)
                                  {
                                    return "Phone Number Must Be Of 10 Digits...";
                                  }
                                else
                                  {
                                    return null;
                                  }
                              },
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                              initialValue: Global.phone,
                                decoration: InputDecoration(
                                  isDense: true,
                                    labelText: "Phone",
                                    labelStyle: TextStyle(
                                      color: theme1
                                    ),
                                    hintText: "Enter Phone Number",
                                    prefixIcon: const Icon(
                                        Icons.phone
                                    ),
                                    prefixIconColor: theme1,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: theme1,
                                          width: 2,
                                        )
                                    ),
                                    focusColor: theme1,
                                ),
                              onChanged: (value) {
                                setState(() {
                                  Global.phone = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 12,
                            ),

                            //Date of Birth
                            // TextFormField(
                            //   controller: date,
                            //   // keyboardType: TextInputType.datetime,
                            //   textInputAction: TextInputAction.next,
                            //     decoration: InputDecoration(
                            //         isDense: true,
                            //         labelText: "Date of Birth (optional)",
                            //         labelStyle: TextStyle(
                            //           color: theme1
                            //         ),
                            //         // label: Text("${Global.DOB}"),
                            //         hintText: "Enter Date of Birth",
                            //         prefixIcon: const Icon(
                            //             Icons.date_range
                            //         ),
                            //         prefixIconColor: theme1,
                            //         border: OutlineInputBorder(
                            //             borderRadius: BorderRadius.circular(10)
                            //         ),
                            //         focusedBorder: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(10),
                            //             borderSide: BorderSide(
                            //               color: theme1,
                            //               width: 2,
                            //             )
                            //         ),
                            //     ),
                            //   onTap: () async {
                            //     setState(() async {
                            //       DateTime? pickDate = await showDatePicker(
                            //           context: context,
                            //           initialDate: DateTime.now(),
                            //           firstDate: DateTime(1947),
                            //           lastDate: DateTime.now(),
                            //       ).then((value){
                            //         setState(() {
                            //           Global.DOB = "${value?.day}-${value?.month}-${value?.year}".toString();
                            //           date.text = "${value?.day}-${value?.month}-${value?.year}".toString();
                            //         });
                            //       });
                            //     });
                            //   },
                            //   onChanged: (value) {
                            //     setState(() {
                            //       Global.DOB = value;
                            //       debugPrint(Global.DOB);
                            //     });
                            //   },
                            // ),
                            // const SizedBox(
                            //   height: 12,
                            // ),

                            //Website
                            TextFormField(
                                keyboardType: TextInputType.url,
                                textInputAction: TextInputAction.next,
                                initialValue: Global.website,
                                decoration: InputDecoration(
                                    isDense: true,
                                    labelText: "Website (optional)",
                                    labelStyle: TextStyle(
                                      color: theme1
                                    ),
                                    hintText: "Enter Website",
                                    prefixIcon: Image.asset("assets/icons/website.png",
                                      scale: 2.5,
                                    ),
                                    prefixIconColor: theme1,
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
                                  Global.website = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 12,
                            ),

                            //LinkedIn
                            TextFormField(
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.done,
                                initialValue: Global.linkedIn,
                                decoration: InputDecoration(
                                    isDense: true,
                                    labelText: "LinkedIn (optional)",
                                    labelStyle: TextStyle(
                                      color: theme1,
                                    ),
                                    hintText: "Enter Linkedin",
                                    prefixIcon: Image.asset("assets/icons/linkdeIn.png",
                                    scale: 2.5,
                                    ),
                                    prefixIconColor: theme1,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: theme1,
                                          width: 2,
                                        )
                                    ),
                                ),
                              onChanged: (value) {
                                setState(() {
                                  Global.linkedIn = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //Clear Button
                                ElevatedButton.icon(
                                    onPressed: () {
                                      setState(() {
                                        formKey.currentState!.reset();

                                        Global.name = null;
                                        Global.address = null;
                                        Global.email = null;
                                        Global.phone = null;
                                        Global.DOB = null;
                                        Global.website = null;
                                        Global.linkedIn = null;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: theme1,
                                      foregroundColor: theme2,
                                    ),
                                    icon: const Icon(Icons.clear),
                                    label: const Text("Clear")
                                ),

                                //Submit Button
                                ElevatedButton.icon(
                                    onPressed: () {
                                      bool validated = formKey.currentState!.validate();

                                      setState(() {
                                        if(validated)
                                        {
                                          formKey.currentState!.save();

                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: const Text("Successfully Validated !!"),
                                              backgroundColor: theme1,
                                              behavior: SnackBarBehavior.floating,
                                              duration: const Duration(seconds: 3),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              dismissDirection: DismissDirection.horizontal,
                                            )
                                          );
                                        }
                                        else
                                          {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(
                                                  content: const Text("Failed to Validated !!"),
                                                  backgroundColor: Colors.red,
                                                  behavior: SnackBarBehavior.floating,
                                                  duration: const Duration(seconds: 3),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  dismissDirection: DismissDirection.horizontal,
                                                )
                                            );
                                          }
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: theme1,
                                      foregroundColor: theme2,
                                    ),
                                    icon: const Icon(Icons.done),
                                    label: const Text("Save")
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Image Page
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(40),
                    decoration: BoxDecoration(
                        color: theme2,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(5, 5)
                          )
                        ]
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.grey.shade200,
                          foregroundImage: (Global.image != null) ? FileImage(Global.image!) : null,
                          child: Text("Add Image",
                          style: TextStyle(
                            color: theme1
                          ),),
                        ),
                        FloatingActionButton.small(
                            onPressed: () {
                              ImagePicker pickImg = ImagePicker();
                              XFile? file;
                              
                              showDialog(
                                context: context,
                                builder: (context) =>  AlertDialog(
                                  title: const Text("Pick Image"),
                                  content: const Text("Choose the source for your image"),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actions: [
                                    ElevatedButton.icon(
                                        onPressed: () async {
                                          file = await pickImg.pickImage(source: ImageSource.camera);

                                          if(file != null)
                                            {
                                              setState(() {
                                                Global.image = File(file!.path);
                                              });
                                            }

                                          Navigator.of(context).pop();
                                      },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: theme1,
                                          foregroundColor: theme2,
                                        ),
                                        icon: const Icon(Icons.camera_alt),
                                        label: const Text("Camera")
                                    ),
                                    ElevatedButton.icon(
                                        onPressed: () async{
                                          file = await pickImg.pickImage(source: ImageSource.gallery);

                                          if(file != null)
                                          {
                                            setState(() {
                                              Global.image = File(file!.path);
                                            });
                                          }

                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: theme1,
                                          foregroundColor: theme2,
                                        ),
                                        icon: const Icon(Icons.image),
                                        label: const Text("Gallary")
                                    ),
                                  ],
                                ),
                              );
                            },
                          backgroundColor: theme1,
                          child: const Icon(Icons.add),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
