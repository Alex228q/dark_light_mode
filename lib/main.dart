import 'package:dark_light_mode/pages/home_page.dart';
import 'package:dark_light_mode/styles/theme_data_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeDataStyle.light,
      darkTheme: ThemeDataStyle.dark,
      debugShowCheckedModeBanner: false,
      title: 'Dark/Light',
      home: HomePage(),
    );
  }
}
