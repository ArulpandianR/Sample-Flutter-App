import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'LoginPage.dart';
import 'helper/SampleFlutterConstants.dart';

void main() => runApp(ContactlyApp());

class ContactlyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    loginPageTag: (context) => LoginPage(),
    homePageTag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ),
        home: LoginPage(),
        routes: routes
    );
  }

}