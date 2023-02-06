import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:game_xo/ui/page/game_page.dart';
import 'package:game_xo/ui/widgets/theme_changed_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
            style: Theme.of(context).textTheme.headline1,
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
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            const SizedBox(height: 90),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  NavuagtionButtonToGamePage(title: 'Start Game'),
                  SizedBox(width: 30),
                  NavuagtionButtonToUrlLaunchGitScreen(title: 'GitHub'),
                ],
              ),
            )
          ],
        ));
  }
}

class NavuagtionButtonToGamePage extends StatelessWidget {
  final String title;
  const NavuagtionButtonToGamePage({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          Icon(
            Icons.play_arrow,
            color: Theme.of(context).primaryColor,
            size: 60,
          ),
        ],
      ),
    );
  }
}

class NavuagtionButtonToUrlLaunchGitScreen extends StatelessWidget {
  final String title;
  const NavuagtionButtonToUrlLaunchGitScreen({
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
        const url = 'https://github.com/Dauleets/game_xo';
        openBrowser(url: url, inApp: true);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          Icon(
            Icons.code,
            color: Theme.of(context).primaryColor,
            size: 60,
          ),
        ],
      ),
    );
  }
}

Future<void> openBrowser({
  required String url,
  bool inApp = false,
}) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      enableJavaScript: true,
    );
  }
}
