import 'package:flutter/material.dart';
import 'package:game_xo/ui/screen/splash_screen.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XO game',
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 32,
              color: Color.fromRGBO(8, 31, 50, 1.0),
              fontWeight: FontWeight.w900,
            ),
            titleLarge: TextStyle(
              fontSize: 25,
              color: Color.fromRGBO(0, 0, 0, 0.87),
              fontWeight: FontWeight.w300,
              letterSpacing: 0.15,
            ),
          )),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
