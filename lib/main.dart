import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.rakkasTextTheme(Theme.of(context).textTheme),
      ),
      home: const HomeView(),
    );
  }
}
