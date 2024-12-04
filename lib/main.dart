import 'package:flutter/material.dart';
import 'package:practical_project/popupscreen.dart';
import 'package:practical_project/snackbar.dart';
import 'package:practical_project/studentSudent.dart';
import 'package:practical_project/ui/alert.dart';

import 'package:practical_project/ui/grideView_builder.dart';
import 'package:practical_project/ui/grideview_extent.dart';
import 'package:practical_project/ui/gridview_count_widget.dart';
import 'package:practical_project/ui/home_page.dart';
import 'package:practical_project/ui/radiobutton.dart';
import 'package:practical_project/ui/search_page.dart';
import 'package:practical_project/ui/widget.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: SearchPage ()
    );
  }
}
