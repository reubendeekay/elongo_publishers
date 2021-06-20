import 'package:elongo_publishers/screens/about_us/about_us.dart';
import 'package:elongo_publishers/screens/home/homepage.dart';

class DrawerItem {
  final String title;
  final String routeName;
  const DrawerItem({this.title, this.routeName});
}

class DrawerItems {
  static const home = DrawerItem(
    title: 'Home',
    routeName: Homepage.routeName,
  );
  static const about_us = DrawerItem(
    title: 'About Us',
    routeName: AboutUs.routeName,
  );
  static const publish = DrawerItem(
    title: 'Publish With Us',
  );
  static const work = DrawerItem(
    title: 'Our Work',
  );
  static const bookstore = DrawerItem(
    title: 'Bookstore',
  );
  static const vote = DrawerItem(
    title: 'Vote',
  );
  static const account = DrawerItem(
    title: 'My Account',
  );

  static final List<DrawerItem> all = [
    home,
    about_us,
    publish,
    work,
    bookstore,
    vote,
    account
  ];
}
