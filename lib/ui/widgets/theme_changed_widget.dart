import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_xo/logic/bloc_theme/bloc_theme_bloc.dart';

class ThemeChangedWidget extends StatelessWidget {
  const ThemeChangedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocThemeBloc, BlocThemeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              if (state.darkTheme == false) {
                BlocProvider.of<BlocThemeBloc>(context).add(DarkThemeEvent());
              } else {
                BlocProvider.of<BlocThemeBloc>(context).add(LigthThemeEvent());
              }
            },
            child: const Icon(
              Icons.dark_mode,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
