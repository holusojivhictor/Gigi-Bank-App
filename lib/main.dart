import 'package:flutter/material.dart';
import 'package:gigi_bank_app/routes.dart';
import 'package:gigi_bank_app/widget_link.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gigi_bank_app/constants.dart';

void main() {
  runApp(GigiBankApp());
}

class GigiBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank App',
      theme: ThemeData(
        accentColor: Constants.appLight,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        canvasColor: Constants.black,
      ),
      home: WidgetLink(),
      routes: routes,
    );
  }
}