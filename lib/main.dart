import 'package:flutter/material.dart';
import 'package:plurality/AppSplashScreen.dart';
import 'HomePlayerPage.dart';
import 'ajoutProject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plurality',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home:  AppSplashScreenPage(),
      routes: <String, WidgetBuilder>{
        '/listeprojets': (BuildContext context) => HomePlayerPage(title: ''),
        '/ajoutProjet': (BuildContext context) => AjoutProjet(title: ''),
      },
    );
  }
}

