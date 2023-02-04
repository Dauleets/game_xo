import 'package:flutter/material.dart';
import 'package:game_xo/ui/screen/splash_screen.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XO game',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w700,
            ),
            titleLarge: TextStyle(
              fontSize: 25,
              color: Color.fromRGBO(240, 240, 240, 0.867),
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15,
            ),
            titleSmall: TextStyle(
              fontSize: 35,
              color: Color.fromRGBO(240, 240, 240, 0.867),
              fontWeight: FontWeight.w900,
            ),
          )),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
