import 'package:flutter/material.dart';
import 'package:unify/page/installation-page.dart';
import 'package:unify/page/main-plan-page.dart';
import 'package:unify/page/thank-you-page.dart';

import 'page/add-on-page.dart';
import 'page/personal-details-page.dart';
import 'page/review-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xffff6624),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/installation-page': (context) => InstallationPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/add-on-page': (context) => AddOnPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/personal-details-page': (context) => PersonalDetailsPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/review-page': (context) => ReviewPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/thank-you-page': (context) => ThankYouPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/': (context) => MainPlanPage(),

      },
    );
  }
}