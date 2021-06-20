import 'package:elongo_publishers/constants.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      height: 440,
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.blue[50].withOpacity(1),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/book.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Of Scattered Tears',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              subtitle: Text('Firdaus H. Salim',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {},
                  style: kButton,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart),
                      Text(
                        '  BUY',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
