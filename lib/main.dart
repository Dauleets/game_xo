import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_xo/core/theme_style.dart';
import 'package:game_xo/logic/bloc_game/xo_bloc.dart';
import 'package:game_xo/logic/bloc_theme/bloc_theme_bloc.dart';
import 'package:game_xo/ui/screen/splash_screen.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<XoBloc>(
          create: (context) => XoBloc(),
        ),
        BlocProvider<BlocThemeBloc>(
          create: (context) => BlocThemeBloc(),
        ),
      ],
      child: BlocBuilder<BlocThemeBloc, BlocThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'XO game',
            theme: Styles.themeData(state.darkTheme, context),
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
