import 'package:flutter/material.dart';
import 'package:practical_project/popupscreen.dart';
import 'package:practical_project/studentSudent.dart';
import 'package:practical_project/ui/alert.dart';

import 'package:practical_project/ui/grideView_builder.dart';
import 'package:practical_project/ui/grideview_extent.dart';
import 'package:practical_project/ui/gridview_count_widget.dart';
import 'package:practical_project/ui/home_page.dart';
import 'package:practical_project/ui/radiobutton.dart';
import 'package:practical_project/ui/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home:SquareRoot ()
    );
  }
}
