import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: ThemeData.light(), isDark: false)) {
    on<ToggleThemeEvent>((event, emit) {
      emit(state.isDark
          ? ThemeState(themeData: ThemeData.light(), isDark: false)
          : ThemeState(themeData: ThemeData.dark(), isDark: true));
    });
  }
}
