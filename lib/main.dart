import 'package:dirbbox/loggin_page.dart';
import 'package:dirbbox/profile_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: logginPage(),
      initialRoute: logginPage.nameRoute,
      routes: {
        logginPage.nameRoute: (context) => logginPage(),
        ProfilePage.nameRoute: (context) => ProfilePage(),
      },
    );
  }
}
