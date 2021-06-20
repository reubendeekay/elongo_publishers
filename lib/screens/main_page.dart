import 'package:elongo_publishers/screens/about_us/about_us.dart';
import 'package:elongo_publishers/screens/home/homepage.dart';
import 'package:elongo_publishers/screens/home/widgets/drawer_tile.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double xOffset;
  double yOffset;
  double scaleFactor;
  bool isDragging = false;
  bool isDrawerOpen;
  DrawerItem item = DrawerItems.home;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  void openDrawer() {
    setState(() {
      xOffset = 230;
      yOffset = 100;
      scaleFactor = 0.55;
      isDrawerOpen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [buildDrawer(context), buildPage()],
          ),
        ),
      ),
    );
  }

  Widget buildDrawer(BuildContext context) => Container(
        color: Color.fromRGBO(33, 33, 33, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.all(
                20,
              ),
              height: 80,
              width: 200,
              child: Image.asset('assets/images/logo.png'),
            ),
            Column(
                children: DrawerItems.all
                    .map((e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              item = e;
                            });
                            closeDrawer();
                          },
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.only(left: 40),
                            width: double.infinity,
                            child: Text(
                              e.title,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ))
                    .toList()),
          ],
        ),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();

          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging == true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) {
            const delta = 1;
            if (details.delta.dx > delta) {
              openDrawer();
            } else if (details.delta.dx < -delta) {
              closeDrawer();
            }

            return isDragging == false;
          }
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 250),
            curve: Curves.bounceInOut,
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            child: AbsorbPointer(
                absorbing: isDrawerOpen,
                child: Container(
                  child: isDrawerOpen
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Stack(children: [
                            getSelectedPage(),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.blue[50].withOpacity(0.5),
                                Color.fromRGBO(33, 33, 33, 0.8),
                              ])),
                            )
                          ]),
                        )
                      : getSelectedPage(),
                ))),
      ),
    );
  }

///////////TODO:IMPLEMENT THE SCREEN DRAWER ITEMS HERE
  Widget getSelectedPage() {
    switch (item) {
      case DrawerItems.home:
        return Homepage(callback: openDrawer);
      case DrawerItems.about_us:
        return AboutUs(callback: openDrawer);
      default:
        return Homepage(callback: openDrawer);
    }
  }
}
