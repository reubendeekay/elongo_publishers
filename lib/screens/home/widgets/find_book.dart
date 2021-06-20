import 'package:flutter/material.dart';

class FindBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Colors.blue[50].withOpacity(0.7);
    final titleController = TextEditingController();

    return Container(
      margin: EdgeInsets.all(10),
      height: 240,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Book Title'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Book Category'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Book Author'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[900])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 15,
                  ),
                  Text('FIND BOOK')
                ],
              ))
        ],
      ),
    );
  }
}
