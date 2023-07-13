import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors_utils.dart';
import 'package:resume_builder/utils/routes_utils.dart';
import 'package:resume_builder/views/screens/achivements.dart';
import 'package:resume_builder/views/screens/carrier_objective.dart';
import 'package:resume_builder/views/screens/contact_info.dart';
import 'package:resume_builder/views/screens/declaration.dart';
import 'package:resume_builder/views/screens/education.dart';
import 'package:resume_builder/views/screens/experiences.dart';
import 'package:resume_builder/views/screens/homePage.dart';
import 'package:resume_builder/views/screens/interest_hobbies.dart';
import 'package:resume_builder/views/screens/personal_details.dart';
import 'package:resume_builder/views/screens/projects.dart';
import 'package:resume_builder/views/screens/references.dart';
import 'package:resume_builder/views/screens/resumeWorkSpace.dart';
import 'package:resume_builder/views/screens/splash_screen.dart';
import 'package:resume_builder/views/screens/technical_skills.dart';

void main()
{
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        colorSchemeSeed: theme1,
      ),
      initialRoute: MyRoutes.SplashScreen,
      routes: {
        MyRoutes.HomePage : (context) => const HomePage(),
        MyRoutes.SplashScreen : (context) => const SplashScreen(),
        MyRoutes.ResumeWorkSpace : (context) => const ResumeWorkSpace(),
        MyRoutes.BuildOptions[0]["name"] : (context) => const ContactInfo(),
        MyRoutes.BuildOptions[1]["name"] : (context) => const CarrierObjective(),
        MyRoutes.BuildOptions[2]["name"] : (context) => const PersonalDetails(),
        MyRoutes.BuildOptions[3]["name"] : (context) => const Education(),
        MyRoutes.BuildOptions[4]["name"] : (context) => const Experience(),
        MyRoutes.BuildOptions[5]["name"] : (context) => const TechnicalSkills(),
        MyRoutes.BuildOptions[6]["name"] : (context) => const InterestHobbies(),
        MyRoutes.BuildOptions[7]["name"] : (context) => const Projects(),
        MyRoutes.BuildOptions[8]["name"] : (context) => const Achivements(),
        MyRoutes.BuildOptions[9]["name"] : (context) => const References(),
        MyRoutes.BuildOptions[10]["name"] : (context) => const Declaration(),
      },
    );
  }
}
