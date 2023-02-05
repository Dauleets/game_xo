import 'package:flutter/material.dart';
import 'package:game_xo/ui/page/game_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0,
          title: Text(
            'Welcome XO game',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/welcome.png',
                color: Theme.of(context).primaryColor),
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
        backgroundColor: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return const GamePage();
          // return const HomePage();
        }));
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
