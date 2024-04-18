import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:plurality/HomePlayerPage.dart';
import 'dart:async';

class AppSplashScreenPage extends StatefulWidget {
  @override
  _AppSplashScreenPageState createState() => _AppSplashScreenPageState();
}

class _AppSplashScreenPageState extends State<AppSplashScreenPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            //builder: (context) => const MyHomePage(title:''),
            builder: (context) => const HomePlayerPage(title:'Connection'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 239, 210, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.height * 0.90,
            ),
            LoadingAnimationWidget.hexagonDots(
                color: Colors.black, size: 75),
            const Padding(padding: EdgeInsets.only(bottom: 80)),
          ],
        ),
      ),
    );
  }
}
