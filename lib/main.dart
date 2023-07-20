import 'package:flutter/material.dart';
import 'package:quiz/screen.dart';
import 'package:quiz/theme_constant.dart';
import 'package:quiz/theme_manager.dart';

void main() {
  runApp(const MyApp());
}
ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

@override
  void dispose() {
    themeManager.removeListener((themeListener));
    super.dispose();
  }
  @override
  void initState() {
    themeManager.addListener((themeListener));
    super.initState();
  }
  themeListener(){
    if (mounted) {
      setState(() {

      });
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:lightTheme ,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      home:  Screen_Grid(),
    );
  }
}













