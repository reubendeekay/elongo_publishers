import 'package:elongo_publishers/constants.dart';
import 'package:elongo_publishers/screens/about_us/about_us.dart';
import 'package:elongo_publishers/screens/home/homepage.dart';
import 'package:elongo_publishers/screens/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: MainPage(),
      routes: {
        Homepage.routeName: (ctx) => Homepage(),
        AboutUs.routeName: (ctx) => AboutUs(),
      },
    );
  }
}
