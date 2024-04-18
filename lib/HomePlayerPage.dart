import 'package:flutter/material.dart';

class HomePlayerPage extends StatefulWidget {
  const HomePlayerPage({Key? key, required this.title});

  final String title;

  @override
  State<HomePlayerPage> createState() => _HomePlayerPageState();
}

class _HomePlayerPageState extends State<HomePlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(59, 81, 119, 30),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ajoutProjet');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(249, 181, 19, 30),//jaune
                minimumSize: Size(double.infinity, 50),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "+ Ajouter un Projet",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
