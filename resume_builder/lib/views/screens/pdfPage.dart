import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgts.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../utils/colors_utils.dart';

class PDFpage extends StatefulWidget {
  const PDFpage({Key? key}) : super(key: key);

  @override
  State<PDFpage> createState() => _PDFpageState();
}

class _PDFpageState extends State<PDFpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Page"),
        centerTitle: true,
        leading: const MyBackButton(),
        backgroundColor: theme1,
        foregroundColor: theme2,
      ),
    );
  }
}
