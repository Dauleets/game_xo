import 'package:flutter/material.dart';
import 'package:game_xo/ui/page/game_page.dart';
import 'package:game_xo/ui/widgets/theme_changed_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0,
          title: const Text(
            'Welcome XO game',
          ),
          actions: const [
            ThemeChangedWidget(),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/welcome.png',
            ),
            const SizedBox(height: 120),
            Center(
              child: Column(
                children: const [
                  AppElevetedButton(title: 'Start Game'),
                  SizedBox(height: 20),
                  AppElevetedButton(title: 'GitHub'),
                ],
              ),
            )
          ],
        ));
  }
}

class AppElevetedButton extends StatelessWidget {
  final String title;
  const AppElevetedButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return const GamePage();
        }));
      },
      child: Text(
        title,
      ),
    );
  }
}
