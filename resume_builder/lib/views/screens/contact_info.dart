import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  int currentIndex = 0;

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Info"),
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
                            controller: nameController,
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
                            // maxLines: 7,
                            // minLines: 2,
                            keyboardType: TextInputType.name,
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
                                  )
                              ),
                            )
                          ),
                          const SizedBox(
                            height: 12,
                          ),

                          //Address
                          TextFormField(
                            controller: addressController,
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
                              )
                          ),
                          const SizedBox(
                            height: 12,
                          ),

                          //Email
                          TextFormField(
                            controller: emailController,
                            validator: (value){
                              if(value!.isEmpty)
                                {
                                  return "Please enter email id...";
                                }
                              else
                                {
                                  return null;
                                }
                            },
                            keyboardType: TextInputType.emailAddress,
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
                                focusColor: theme1,
                              )
                          ),
                          const SizedBox(
                            height: 12,
                          ),

                          //Phone
                          TextFormField(
                            controller: phoneController,
                            validator: (value){
                              if(value!.isEmpty)
                                {
                                  return "Please enter phone number...";
                                }
                              else
                                {
                                  return null;
                                }
                            },
                            keyboardType: TextInputType.phone,
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
                          ),
                          const SizedBox(
                            height: 12,
                          ),

                          //Date of Birth
                          TextFormField(
                            keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  isDense: true,
                                  labelText: "Date of Birth (optional)",
                                  labelStyle: TextStyle(
                                    color: theme1
                                  ),
                                  hintText: "Enter Date of Birth",
                                  prefixIcon: const Icon(
                                      Icons.date_range
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
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          //Website
                          TextFormField(
                            keyboardType: TextInputType.url,
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
                              )
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          //LinkedIn
                          TextFormField(
                            keyboardType: TextInputType.name,
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
                              )
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      nameController.clear();
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: theme1,
                                    foregroundColor: theme2,
                                  ),
                                  icon: const Icon(Icons.clear),
                                  label: const Text("Clear")
                              ),
                              ElevatedButton.icon(
                                  onPressed: () {
                                    bool validated = formKey.currentState!.validate();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: theme1,
                                    foregroundColor: theme2,
                                  ),
                                  icon: const Icon(Icons.done),
                                  label: const Text("Submit")
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
