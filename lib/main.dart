import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FluCalc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      ),
      home: HomePage(),
    );
  }
}

