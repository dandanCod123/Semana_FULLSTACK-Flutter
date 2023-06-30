import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_01/src/shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: LightTheme,
      darkTheme: DarkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,

      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/edit': (context) => const EditTaskBoardPage(),
      //   '/config': (context) => const ConfigurationPage(),
      // },
    );
  }
}
