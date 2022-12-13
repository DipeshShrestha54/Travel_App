import 'package:flutter/material.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/navpages/main_page.dart';
import 'package:travel_app/pages/welcome_page.dart';

void main() {
  runApp(const MaterialApp(
    title: "Travel App",
    debugShowCheckedModeBanner: false,
    home: DetailPage(),
  ));
}
