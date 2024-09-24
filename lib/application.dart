import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracker/screens/main_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (ctx) => const MainScreen(),
      },
    );
  }
}
