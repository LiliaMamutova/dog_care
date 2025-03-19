part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class SetInitialTheme extends ThemeEvent {}

class ChangeTheme extends ThemeEvent {}
