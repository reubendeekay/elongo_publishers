import 'package:flutter/material.dart';

class TopHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 110,
      margin: EdgeInsets.all(10),
      width: size.width,
      child: Stack(
        children: [
          Container(
            height: 110,
            width: size.width,
            child: Image.asset('assets/images/head.png', fit: BoxFit.fill),
          ),
          Center(
            child: Text(
              'About Us',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          )
        ],
      ),
    );
  }
}
