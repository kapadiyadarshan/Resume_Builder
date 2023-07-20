class MyRoutes {
  static String HomePage = "/";
  static String ResumeWorkSpace = "resume_workspace";
  static String SplashScreen = "splash_screen";
  static String PDFpage = "PDFpage";

  static String IconPath = "assets/icons/";

  static List<Map<String, dynamic>> BuildOptions = [
    {
      "name" : "contact_info",
      "title" : "Contact Info",
      "icon" : "${IconPath}contact_info.png",
    },
    {
      "name" : "carrier_objective",
      "title" : "Carrier Objective",
      "icon" : "${IconPath}carrier_objective.png",
    },
    {
      "name" : "personal_details",
      "title" : "Personal Details",
      "icon" : "${IconPath}personal_details.png",
    },
    {
      "name" : "education",
      "title" : "Education",
      "icon" : "${IconPath}education.png",
    },
    {
      "name" : "experiences",
      "title" : "Experiences",
      "icon" : "${IconPath}experience.png",
    },
    {
      "name" : "technical_skills",
      "title" : "Technical Skills",
      "icon" : "${IconPath}technical_skills.png",
    },
    {
      "name" : "interest_hobbies",
      "title" : "Interest/Hobbies",
      "icon" : "${IconPath}interest_hobbies.png",
    },
    {
      "name" : "projects",
      "title" : "Projects",
      "icon" : "${IconPath}projects.png",
    },
    {
      "name" : "achivements",
      "title" : "Achievements",
      "icon" : "${IconPath}achivements.png",
    },
    {
      "name" : "references",
      "title" : "References",
      "icon" : "${IconPath}references.png",
    },
    {
      "name" : "declaration",
      "title" : "Declaration",
      "icon" : "${IconPath}declaration.png",
    },
  ];
}