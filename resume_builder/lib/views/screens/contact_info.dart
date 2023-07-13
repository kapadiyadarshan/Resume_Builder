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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Info"),
        centerTitle: true,
        leading: const MyBackButton(),
        // backgroundColor: theme1,
        foregroundColor: theme2,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
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
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme2,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20,
                        offset: Offset(5, 5)
                      )
                    ]
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //Name
                        TextFormField(
                          showCursor: true,
                          // maxLines: 7,
                          // minLines: 2,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: "Name",
                            hintText: "Enter Full Name",
                            prefixIcon: const Icon(
                              Icons.person,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                            )
                          )
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        //Address
                        TextFormField(
                          keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              isDense: true,
                                labelText: "Address",
                                hintText: "Enter Address",
                                prefixIcon: const Icon(
                                    Icons.location_on_rounded
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            )
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        //Email
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              isDense: true,
                                labelText: "Email",
                                hintText: "Enter Email",
                                prefixIcon: const Icon(
                                    Icons.email_rounded
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            )
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        //Phone
                        TextFormField(
                          keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              isDense: true,
                                labelText: "Phone",
                                hintText: "Enter Phone Number",
                                prefixIcon: const Icon(
                                    Icons.phone
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            )
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
                                hintText: "Enter Date of Birth",
                                prefixIcon: const Icon(
                                    Icons.date_range
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            )
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
                                hintText: "Enter Website",
                                prefixIcon: const Icon(
                                    Icons.web
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
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
                                hintText: "Enter Linkedin",
                                prefixIcon: const Icon(
                                    Icons.dataset_linked_sharp
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            )
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
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
