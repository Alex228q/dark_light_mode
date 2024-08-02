import 'package:dark_light_mode/pages/home_page.dart';
import 'package:dark_light_mode/providers/theme_provider.dart';
import 'package:dark_light_mode/styles/theme_data_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,
      darkTheme: ThemeDataStyle.dark,
      debugShowCheckedModeBanner: false,
      title: 'Dark/Light',
      home: const HomePage(),
    );
  }
}
