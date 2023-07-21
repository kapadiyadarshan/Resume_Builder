import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../Global/global_class.dart';
import '../../utils/colors_utils.dart';

class PDFpage extends StatefulWidget {
  const PDFpage({Key? key}) : super(key: key);

  @override
  State<PDFpage> createState() => _PDFpageState();
}

class _PDFpageState extends State<PDFpage> {

  PdfColor pdf1 = PdfColors.brown700;
  PdfColor pdf2 = PdfColors.brown50;

  generatePDF()
  {
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(12),
        build: (pw.Context context) => pw.Column(
          children: [
            pw.Container(
              height: 20,
              width: double.infinity,
              color: pdf1,
            ),
            pw.SizedBox(
              height: 12
            ),
            pw.Row(
              children: [
                pw.Expanded(
                    child: pw.Container(
                      height: 120,
                      width: 100,

                      decoration: pw.BoxDecoration(
                        // color: PdfColors.pink50,
                        shape: pw.BoxShape.circle,
                        image: pw.DecorationImage(
                          image: pw.MemoryImage(
                            File(Global.image!.path).readAsBytesSync(),
                          ),
                        ),
                      ),
                    ),
                ),
                pw.SizedBox(
                  width: 12,
                ),
                pw.Expanded(
                  flex: 2,
                  child: pw.Container(
                    height: 120,
                    width: 200,
                    padding: const pw.EdgeInsets.all(12),

                    decoration: pw.BoxDecoration(
                        color: PdfColors.brown50,
                      boxShadow: [
                        pw.BoxShadow(
                          color: pdf1,
                          blurRadius: 20,
                          offset: const PdfPoint(2, 2),
                        ),
                      ]
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("${Global.name}",
                        style: pw.TextStyle(
                          fontSize: 18,
                          fontWeight: pw.FontWeight.bold
                        )),
                        pw.SizedBox(
                          height: 4
                        ),
                        pw.Text("${Global.address}",
                        style: const pw.TextStyle(
                          fontSize: 10
                        ))
                      ]
                    )
                  ),
                ),
                pw.SizedBox(
                  width: 12,
                ),
                pw.Expanded(
                  flex: 3,
                  child: pw.Container(
                    height: 120,
                    width: 200,
                    padding: pw.EdgeInsets.all(12),

                    decoration: pw.BoxDecoration(
                        color: PdfColors.brown50,
                        boxShadow: [
                          pw.BoxShadow(
                              color: pdf1,
                              blurRadius: 20,
                            offset: const PdfPoint(2, 2),
                          ),
                        ],
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.RichText(
                          text: pw.TextSpan(
                            children: [
                              pw.TextSpan(
                                text: "Contact  : ",
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold
                                ),
                              ),
                              pw.TextSpan(
                                text: "${Global.phone}",
                              ),
                            ]
                          )
                        ),
                        pw.SizedBox(
                          height: 4
                        ),
                        pw.RichText(
                            text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: "Email      : ",
                                    style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "${Global.email}",
                                  ),
                                ]
                            )
                        ),
                        pw.SizedBox(
                            height: 4
                        ),
                        pw.RichText(
                            text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: "DOB        : ",
                                    style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "${Global.DOB}",
                                  ),
                                ]
                            )
                        ),
                        pw.SizedBox(
                            height: 4
                        ),
                        pw.RichText(
                            text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: "Website  : ",
                                    style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "${Global.website}",
                                  ),
                                ]
                            )
                        ),
                        pw.SizedBox(
                            height: 4
                        ),
                        pw.RichText(
                            text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: "LinkedIn : ",
                                    style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "${Global.linkedIn}",
                                  ),
                                ]
                            )
                        ),
                      ]
                    )
                  ),
                ),
              ]
            ),
            pw.SizedBox(
                height: 12
            ),
            pw.Divider(
              thickness: 1,
              color: pdf1
            ),
            pw.SizedBox(
                height: 12
            ),
            pw.Row(
              children: [
                pw.Expanded(
                    child: pw.Container(
                      height: 620,
                      width: double.infinity,
                      // color: PdfColors.pink50,
                      child: pw.Column(
                        children: [
                          pw.Column(
                            children: [
                              pw.Container(
                                height: 20,
                                width: double.infinity,
                                padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                decoration: pw.BoxDecoration(
                                  color: pdf1
                                ),
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Text("OBJECTIVE",
                                style: pw.TextStyle(
                                  fontSize: 10,
                                  fontWeight: pw.FontWeight.bold,
                                  color: pdf2
                                ))
                              ),
                              pw.Container(
                                width: double.infinity,
                                padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                decoration: pw.BoxDecoration(
                                  color: pdf2,
                                  boxShadow: [
                                    pw.BoxShadow(
                                      color: pdf1,
                                      blurRadius: 10,
                                      offset: PdfPoint(2, 2)
                                    )
                                  ]
                                ),
                                child: pw.Text("${Global.careerObjective}")
                              )
                            ]
                          ),
                          pw.SizedBox(
                            height: 12
                          ),
                          pw.Column(
                              children: [
                                pw.Container(
                                    height: 20,
                                    width: double.infinity,
                                    padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf1
                                    ),
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Text("SKILLS",
                                        style: pw.TextStyle(
                                            fontSize: 10,
                                            fontWeight: pw.FontWeight.bold,
                                            color: pdf2
                                        ))
                                ),
                                pw.Container(
                                    width: double.infinity,
                                    padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf2,
                                        boxShadow: [
                                          pw.BoxShadow(
                                              color: pdf1,
                                              blurRadius: 10,
                                              offset: PdfPoint(2, 2)
                                          )
                                        ]
                                    ),
                                    child: pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: Global.skills.map((e) => pw.Column(
                                        children: [
                                          pw.Text("~ ${e}"),
                                          pw.SizedBox(
                                            height: 3
                                          )
                                        ]
                                      )).toList()
                                    )
                                )
                              ]
                          ),
                          pw.SizedBox(
                              height: 12
                          ),
                          pw.Column(
                              children: [
                                pw.Container(
                                    height: 20,
                                    width: double.infinity,
                                    padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf1
                                    ),
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Text("REFERENCE",
                                        style: pw.TextStyle(
                                            fontSize: 10,
                                            fontWeight: pw.FontWeight.bold,
                                            color: pdf2
                                        ))
                                ),
                                pw.Container(
                                    width: double.infinity,
                                    padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf2,
                                        boxShadow: [
                                          pw.BoxShadow(
                                              color: pdf1,
                                              blurRadius: 10,
                                              offset: PdfPoint(2, 2)
                                          )
                                        ]
                                    ),
                                    child: pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text("${Global.ref_name}",
                                          style: pw.TextStyle(
                                            fontSize: 14,
                                            fontWeight: pw.FontWeight.bold
                                          )),
                                          pw.SizedBox(
                                            height: 3
                                          ),
                                          pw.Text("${Global.ref_designation}",
                                          style: const pw.TextStyle(
                                            fontSize: 10
                                          )),
                                          pw.SizedBox(
                                              height: 3
                                          ),
                                          pw.Text("${Global.ref_organization}",
                                          style: const pw.TextStyle(
                                            fontSize: 10
                                          )),
                                        ]
                                    )
                                )
                              ]
                          ),
                          pw.SizedBox(
                              height: 12
                          ),
                          pw.Column(
                              children: [
                                pw.Container(
                                    height: 20,
                                    width: double.infinity,
                                    padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf1
                                    ),
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Text("INTEREST",
                                        style: pw.TextStyle(
                                            fontSize: 10,
                                            fontWeight: pw.FontWeight.bold,
                                            color: pdf2
                                        ))
                                ),
                                pw.Container(
                                    width: double.infinity,
                                    padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf2,
                                        boxShadow: [
                                          pw.BoxShadow(
                                              color: pdf1,
                                              blurRadius: 10,
                                              offset: PdfPoint(2, 2)
                                          )
                                        ]
                                    ),
                                    child: pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: Global.interest.map((e) => pw.Column(
                                            children: [
                                              pw.Text("~ ${e}"),
                                              pw.SizedBox(
                                                  height: 3
                                              )
                                            ]
                                        )).toList()
                                    )
                                ),
                              ]
                          ),
                          pw.SizedBox(
                              height: 12
                          ),
                          pw.Column(
                              children: [
                                pw.Container(
                                    height: 20,
                                    width: double.infinity,
                                    padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf1
                                    ),
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Text("LANGUAGE",
                                        style: pw.TextStyle(
                                            fontSize: 10,
                                            fontWeight: pw.FontWeight.bold,
                                            color: pdf2
                                        ))
                                ),
                                pw.Container(
                                    width: double.infinity,
                                    padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                    decoration: pw.BoxDecoration(
                                        color: pdf2,
                                        boxShadow: [
                                          pw.BoxShadow(
                                              color: pdf1,
                                              blurRadius: 10,
                                              offset: PdfPoint(2, 2)
                                          )
                                        ]
                                    ),
                                    child: pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: Global.Languages.map((e) => pw.Column(
                                            children: [
                                              pw.Text("~ ${e}"),
                                              pw.SizedBox(
                                                  height: 3
                                              )
                                            ]
                                        )).toList()
                                    )
                                ),
                              ]
                          ),
                        ]
                      )
                    ),
                ),
                pw.SizedBox(
                  width: 12
                ),
                pw.Expanded(
                  flex: 2,
                  child: pw.Container(
                    height: 620,
                      // color: PdfColors.pink50
                    child: pw.Column(
                      children: [
                        pw.Column(
                            children: [
                              pw.Container(
                                  height: 20,
                                  width: double.infinity,
                                  padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                  decoration: pw.BoxDecoration(
                                      color: pdf1
                                  ),
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text("EXPERIENCE",
                                      style: pw.TextStyle(
                                          fontSize: 10,
                                          fontWeight: pw.FontWeight.bold,
                                          color: pdf2
                                      ))
                              ),
                              pw.Container(
                                  width: double.infinity,
                                  padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                  decoration: pw.BoxDecoration(
                                      color: pdf2,
                                      boxShadow: [
                                        pw.BoxShadow(
                                            color: pdf1,
                                            blurRadius: 10,
                                            offset: PdfPoint(2, 2)
                                        )
                                      ]
                                  ),
                                  child: pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text("${Global.companyName}",
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                          fontWeight: pw.FontWeight.bold
                                        )),
                                        pw.SizedBox(
                                          height: 3
                                        ),
                                        pw.Text("${Global.roles}",
                                            style: const pw.TextStyle(
                                                fontSize: 12
                                            )),
                                        pw.SizedBox(
                                            height: 3
                                        ),
                                        pw.Text("Duration : ${Global.joinedDate} - ${Global.exitDate}",
                                            style: const pw.TextStyle(
                                                fontSize: 12
                                            )),
                                        pw.SizedBox(
                                            height: 3
                                        ),
                                      ]
                                  )
                              ),
                            ]
                        ),
                        pw.SizedBox(
                            height: 12
                        ),
                        //Education
                        pw.Column(
                            children: [
                              pw.Container(
                                  height: 20,
                                  width: double.infinity,
                                  padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                  decoration: pw.BoxDecoration(
                                      color: pdf1
                                  ),
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text("EDUCATION",
                                      style: pw.TextStyle(
                                          fontSize: 10,
                                          fontWeight: pw.FontWeight.bold,
                                          color: pdf2
                                      ))
                              ),
                              pw.Container(
                                  width: double.infinity,
                                  padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                  decoration: pw.BoxDecoration(
                                      color: pdf2,
                                      boxShadow: [
                                        pw.BoxShadow(
                                            color: pdf1,
                                            blurRadius: 10,
                                            offset: PdfPoint(2, 2)
                                        )
                                      ]
                                  ),
                                  child: pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: Global.course.map((e) => pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text("${Global.school[Global.course.indexOf(e)]}",
                                          style: pw.TextStyle(
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold
                                          )),
                                          pw.SizedBox(
                                              height: 3
                                          ),
                                          pw.Text(e),
                                          pw.SizedBox(
                                            height: 3
                                          ),
                                          pw.RichText(
                                              text: pw.TextSpan(
                                                  children: [
                                                    pw.TextSpan(
                                                      text: "Grades  : ",
                                                      style: pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold
                                                      ),
                                                    ),
                                                    pw.TextSpan(
                                                      text: "${Global.grade[Global.course.indexOf(e)]}",
                                                    ),
                                                  ]
                                              )
                                          ),
                                          pw.SizedBox(
                                              height: 3
                                          ),
                                          pw.RichText(
                                              text: pw.TextSpan(
                                                  children: [
                                                    pw.TextSpan(
                                                      text: "Passing Year : ",
                                                      style: pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold
                                                      ),
                                                    ),
                                                    pw.TextSpan(
                                                      text: "${Global.year[Global.course.indexOf(e)]}",
                                                    ),
                                                  ]
                                              )
                                          ),
                                          pw.SizedBox(
                                              height: 3
                                          ),
                                          pw.Divider(
                                            color: pdf1
                                          )
                                        ]
                                      )).toList()
                                  )
                              ),
                            ]
                        ),
                        pw.SizedBox(
                            height: 12
                        ),
                        pw.Column(
                            children: [
                              pw.Container(
                                  height: 20,
                                  width: double.infinity,
                                  padding: const pw.EdgeInsets.symmetric(vertical: 3, horizontal: 6),

                                  decoration: pw.BoxDecoration(
                                      color: pdf1
                                  ),
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text("PROJECTS",
                                      style: pw.TextStyle(
                                          fontSize: 10,
                                          fontWeight: pw.FontWeight.bold,
                                          color: pdf2
                                      ))
                              ),
                              pw.Container(
                                  width: double.infinity,
                                  padding: pw.EdgeInsets.symmetric(vertical: 10, horizontal: 6),

                                  decoration: pw.BoxDecoration(
                                      color: pdf2,
                                      boxShadow: [
                                        pw.BoxShadow(
                                            color: pdf1,
                                            blurRadius: 10,
                                            offset: PdfPoint(2, 2)
                                        )
                                      ]
                                  ),
                                  child: pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text("${Global.projectTitle}",
                                            style: pw.TextStyle(
                                                fontSize: 16,
                                              fontWeight: pw.FontWeight.bold
                                            )),
                                        pw.SizedBox(
                                            height: 3
                                        ),
                                        pw.Text("${Global.pro_roles}",
                                            style: const pw.TextStyle(
                                                fontSize: 12
                                            )),
                                        pw.SizedBox(
                                            height: 3
                                        ),
                                        pw.Text("${Global.pro_description}",
                                            style: const pw.TextStyle(
                                                fontSize: 8
                                            )),
                                        pw.SizedBox(
                                            height: 3
                                        ),
                                      ]
                                  )
                              ),
                            ]
                        ),
                      ]
                    )
                  ),
                ),
              ]
            )
          ]
        )
        ),
    );

    return pdf.save();
  }

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
      body: PdfPreview(
        build: (format) => generatePDF(),
      ),
    );
  }
}
