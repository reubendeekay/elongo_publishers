import 'package:elongo_publishers/constants.dart';
import 'package:elongo_publishers/screens/home/widgets/book_card.dart';
import 'package:elongo_publishers/screens/home/widgets/carousel_item.dart';
import 'package:elongo_publishers/screens/home/widgets/find_book.dart';
import 'package:elongo_publishers/screens/home/widgets/header.dart';
import 'package:elongo_publishers/screens/home/widgets/home_writers_card.dart';

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final VoidCallback callback;
  Homepage({this.callback});
  static const routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppBar(callback),
              Carousel(),
              FindBook(),
              Text(
                'ONLINE BOOKSTORE',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: kPrimaryColor),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookCard(),
                    BookCard(),
                    BookCard(),
                    BookCard(),
                    BookCard(),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
                    style: kButton,
                    child: Text(
                      'Visit the shop',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              HomeWritersCard(
                title: 'Elong\'o Writers\' Festival',
                desc:
                    'Elong’o Writers’ Festival is a program organized and managed by Elong’o Publishers and features authors who have written about FGM, and fiction writers who have allowed anti FGM to become a strong component of scenes. We have also featured authors who have written about motivation and inspiration, those who have allowed inspiration to be the strongest pillar in their content.Elong’o Writers’ Festival revolves around talent nurturing through storytelling and is created for the enthusiastic and curious. It aims at bringing people from all walks of life to come together, and share their passions.',
                buttonName: 'Read More',
              ),
              HomeWritersCard(
                title: 'Elong\'o Writers\' Academy',
                desc:
                    'Elong’o Publishers, extend its quality management and bring in the idea of Writers’ Academy. This Academy was started in the year 2019 as a way of mentoring writers. With four sessions; all done via online, our writers get a good opportunity to grab simple but very important information that help them to improve or rather to qualify their content. At the end of the four sessions, a writer will be in a position to know:',
                buttonName: 'Learn More',
              )
            ],
          ),
        ),
      ),
    );
  }
}
