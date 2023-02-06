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
                children: [
                  NavuagtionButtonToGamePage(title: 'Start Game'),
                  SizedBox(height: 20),
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
      child: Text(
        title,
      ),
    );
  }
}

class NavuagtionButtonToUrlLaunchGitScreen extends StatelessWidget {
  final String title;
  NavuagtionButtonToUrlLaunchGitScreen({
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
        final url = 'https://github.com/Dauleets/game_xo';
        openBrowser(url: url, inApp: true);
      },
      child: Text(
        title,
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
