import 'package:bookly_app/constrain.dart';
import 'package:bookly_app/core/util/navcontroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Navcontroll.route,
      title: 'Bookly',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: backGround,
        primaryColor: Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
