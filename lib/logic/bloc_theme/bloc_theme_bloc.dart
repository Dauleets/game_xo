import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_xo/data/theme_data.dart';

part 'bloc_theme_event.dart';
part 'bloc_theme_state.dart';

class BlocThemeBloc extends Bloc<BlocThemeEvent, BlocThemeState> {
  BlocThemeBloc() : super(BlocThemeState(darkTheme: false)) {
    DarkThemePreference darkThemePreference = DarkThemePreference();
    on<DarkThemeEvent>((event, emit) {
      darkThemePreference.setDarkTheme(event.isDark);

      emit(BlocThemeState(darkTheme: event.isDark));
    });
    on<LigthThemeEvent>((event, emit) {
      darkThemePreference.setDarkTheme(event.isLigth);
      emit(BlocThemeState(darkTheme: event.isLigth));
    });
  }
}
