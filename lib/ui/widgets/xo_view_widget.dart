// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:game_xo/bloc/xo_bloc.dart';
import 'package:game_xo/ui/screen/wins_screen.dart';

class XoViewWidget extends StatelessWidget {
  const XoViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<XoBloc, XoState>(
      builder: (context, state) {
        return Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return GridTile(
                    child: Card(
                  child: ElevatedButton(
                    onPressed: () {
                      return BlocProvider.of<XoBloc>(context)
                          .add(ClickEvent(index));
                    },
                    child: Text(
                      state.str[index],
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ));
              }),
            ),
            const ResultButtonWidget(),
          ],
        );
      },
    );
  }
}

class ResultButtonWidget extends StatelessWidget {
  const ResultButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<XoBloc>(context).add(ResetEvent());
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      ),
      child: BlocListener<XoBloc, XoState>(
        listener: (context, state) {
          if (state.result == 'X Winns' || state.result == 'O Winns') {
            NavigationToWinsOrDrawScreen(
                context, state.result, 'assets/wins.png', state);
          } else if (state.result == 'Draw') {
            NavigationToWinsOrDrawScreen(
                context, state.result, 'assets/wins.png', state);
          }
        },
        child: Text('Reset', style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}

void NavigationToWinsOrDrawScreen(
    BuildContext context, String text, imageName, XoState state) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WinsScreen(
          text: state.result,
          imageName: 'assets/wins.png',
        ),
      ));
  BlocProvider.of<XoBloc>(context).add(ResetEvent());
}
