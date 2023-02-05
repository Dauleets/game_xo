import 'package:flutter/material.dart';

class WinsScreen extends StatelessWidget {
  final String text;
  final String imageName;
  const WinsScreen({super.key, required this.text, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageName,
              ),
              const SizedBox(height: 50),
              Text(
                text,
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                  child: Text(
                    'reset',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
