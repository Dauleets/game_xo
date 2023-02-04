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
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 50),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 20.0),
                  child: Text('reset',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
