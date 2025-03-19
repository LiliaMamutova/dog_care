import 'package:dog_care/config/routes/routes.dart';
import 'package:dog_care/config/routes/routes_name.dart';
import 'package:dog_care/features//theme/dark_theme/dark_theme.dart';
import 'package:dog_care/features/theme/light_theme/light_theme.dart';
import 'package:dog_care/shared/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/theme/bloc_theme/theme_bloc.dart';
import 'features/theme/light_theme/buttons_theme.dart';


void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc()
      .. add(SetInitialTheme()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      builder: (context, state) {
        print(state);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state ? darkTheme : lightTheme,
          home: WelcomeScreen(),
          initialRoute: RoutesName.welcomeScreen,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}
