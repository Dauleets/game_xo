import 'package:flutter/material.dart';
import 'package:game_xo/ui/widgets/xo_view_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('enjoy the game!'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
        child: XoViewWidget(),
      ),
    );
  }
}