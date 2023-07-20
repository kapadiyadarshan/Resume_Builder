import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';

class Global
{
  static String? name;
  static String? address;
  static String? email;
  static int? phone;
  static String? DOB;
  static String? website;
  static String? linkedIn;

  static File? image;

  static String? careerObjective;
  static String? currentDesignation;

  static String? maritualStatus;
  static List Languages = [];

  static List<TextEditingController> course = [];
  static List<TextEditingController> school = [];
  static List<TextEditingController> grade = [];
  static List<TextEditingController> year = [];

  static List skills = [];
  static List<TextEditingController> skillController = [];
}