import 'package:flutter/material.dart';
import 'package:flutterpinterestclone/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinterest',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 0, 0, 0), // Set primary color to white
          background: Colors.white, // Set background color to white
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(title: 'Pinterest')
    );
  }
}



