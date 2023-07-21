import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';

class Global
{
  static String? name;
  static String? address;
  static String? email;
  static String? phone;
  static String? website;
  static String? linkedIn;

  static File? image;

  static String? careerObjective;
  static String? currentDesignation;

  static String? DOB;
  static String? maritualStatus;
  static List Languages = [];
  static String? nationality;

  static List course = [];
  static List<TextEditingController> courseController = [];
  static List school = [];
  static List<TextEditingController> schoolController = [];
  static List grade = [];
  static List<TextEditingController> gradeController = [];
  static List year = [];
  static List<TextEditingController> yearController = [];

  static String? companyName;
  static String? roles;
  static String? joinedDate;
  static String? exitDate;

  static List skills = [];
  static List<TextEditingController> skillController = [];

  static List interest = [];
  static List<TextEditingController> interestController = [];

  static String? projectTitle;
  static String? pro_roles;
  static String? technologies;
  static String? pro_description;

  static List achivement = [];
  static List<TextEditingController> achivementController = [];

  static String? ref_name;
  static String? ref_designation;
  static String? ref_organization;
}