import 'package:flutter/material.dart';
import 'package:game_xo/ui/widgets/theme_changed_widget.dart';
import 'package:game_xo/ui/widgets/xo_view_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'enjoy the game!',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: const [
          ThemeChangedWidget(),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
        child: XoViewWidget(),
      ),
    );
  }
}
