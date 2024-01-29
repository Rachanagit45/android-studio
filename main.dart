import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';
import 'package:project/list_view.dart';
import 'package:project/login.dart';
import 'package:project/navbar.dart';
import 'Home.dart';
import 'RouteConstants.dart';
import 'message.dart';
import 'Cart.dart';
import 'Contact.dart';
import 'Discover.dart';
import 'create_account.dart';
import 'splash.dart';
import 'order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 253, 182, 206),
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue[100],
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
    initialRoute: RouteConstants.initialRoute,
    routes: {
    RouteConstants.homeRoute: (context) => Home(),
    RouteConstants.contactRoute: (context) => Contact(),
    RouteConstants.messageRoute: (context) => Message(),
    RouteConstants.cartRoute: (context) => Cart(),
    RouteConstants.discoverRoute: (context) => Discover(),
    RouteConstants.loginRoute: (context) => Login(),
    RouteConstants.DashRoute:(context)=>Dashboard(),
    RouteConstants.initialRoute: (context) => Splash(),
    RouteConstants.orderRoute: (context) => order(),
    RouteConstants.listRoute : (context) => list(),

  },




    );
  }
}

class MyBottomNavBarApp extends StatefulWidget {
  @override
  _MyBottomNavBarAppState createState() => _MyBottomNavBarAppState();
}


class _MyBottomNavBarAppState extends State<MyBottomNavBarApp> {
  @override
  Widget build(BuildContext context) {
    return Dashboard();
  }
}












