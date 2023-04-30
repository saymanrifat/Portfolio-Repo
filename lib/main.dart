import 'package:flutter/material.dart';
import 'package:portfolio_project/about.dart';
import 'package:portfolio_project/home.dart';
import 'package:portfolio_project/projects.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Sohogo'),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'projects': (context) => MyProjects(),
    },
  ));
}
