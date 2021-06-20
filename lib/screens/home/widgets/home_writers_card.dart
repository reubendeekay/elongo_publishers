import 'package:elongo_publishers/constants.dart';
import 'package:flutter/material.dart';

class HomeWritersCard extends StatelessWidget {
  final String title;
  final String desc;
  final String buttonName;
  final String routeName;

  const HomeWritersCard(
      {this.title, this.desc, this.buttonName, this.routeName});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(5, 1, 5, 1),
      child: Card(
        // color: Colors.blue[50].withOpacity(1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  'assets/images/carousel.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 24,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                desc,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {},
                style: kButton,
                child: Text(
                  buttonName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
