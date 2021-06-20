import 'package:elongo_publishers/screens/about_us/top_heading.dart';
import 'package:elongo_publishers/screens/home/widgets/header.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/about-us';
  final VoidCallback callback;
  AboutUs({this.callback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [HomeAppBar(callback), TopHeading()],
        ),
      ),
    );
  }
}
