import 'package:carousel_slider/carousel_slider.dart';
import 'package:elongo_publishers/constants.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      color: Colors.grey,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/carousel.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              height: 180,
              margin: EdgeInsets.only(left: 30),
              color: Colors.white.withOpacity(0.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 15, 0, 10),
                    child: Row(
                      children: [
                        Text(
                          'Elongo',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Publishers',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 10, 15),
                    child: Text(
                      'Elongo publishers is a niche reference book publisher dedicated to producing world class products',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange)),
                          onPressed: () {},
                          child: Text('Read More')))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 240,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: CarouselItem());
          },
        );
      }).toList(),
    );
  }
}
