part of 'bloc_theme_bloc.dart';

abstract class BlocThemeEvent {}

class DarkThemeEvent extends BlocThemeEvent {
  final bool isDark;
  DarkThemeEvent({this.isDark = true});
}

class LigthThemeEvent extends BlocThemeEvent {
  final bool isLigth;
  LigthThemeEvent({this.isLigth = false});
}
