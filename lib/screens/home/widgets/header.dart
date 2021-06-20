import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback callback;
  HomeAppBar(this.callback);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: callback,
        icon: Icon(
          FontAwesomeIcons.alignLeft,
          size: 21,
        ),
      ),
      title: Container(
          margin: EdgeInsets.fromLTRB(0, 30, 10, 10),
          height: 90,
          width: 200,
          child: Image.asset(
            'assets/images/logo.png',
          )),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
