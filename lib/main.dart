import 'package:flutter/material.dart';
import 'package:tgh_task/screen/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme:ThemeData.dark(),
      home: mainpage(),
    );
  }
}


