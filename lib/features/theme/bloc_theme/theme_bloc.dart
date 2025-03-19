import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, bool> {
  ThemeBloc() : super(false) {


    on<SetInitialTheme>((event, emit) async {
      bool hasThemeDark = await isDark();

      emit(hasThemeDark);

    });


    on<ChangeTheme> ((event, emit) async {
      bool hasThemeDark = await isDark();

      emit(!hasThemeDark);
      setTheme(!hasThemeDark);

    } );
  }
}

Future<bool> isDark() async {
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool("isDark") ?? false;
}

Future<bool> setTheme(bool hasDarkTheme) async {
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.setBool("isDark", hasDarkTheme);
}
