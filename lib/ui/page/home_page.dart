import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_xo/bloc/xo_bloc.dart';
import 'package:game_xo/ui/widgets/xo_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<XoBloc>(
      create: (context) => XoBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'XO game',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(30.0),
          child: XoViewWidget(),
        ),
      ),
    );
  }
}
