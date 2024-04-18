import 'package:flutter/material.dart';

class AjoutProjet extends StatefulWidget {
  const AjoutProjet({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AjoutProjet> createState() => _AjoutProjetState();
}

class _AjoutProjetState extends State<AjoutProjet> {
  TextEditingController nom = TextEditingController();
  TextEditingController description = TextEditingController();
  //Projet _projet = new Projet();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(239, 239, 210, 30),
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(top: 50)),
                const Text(
                  'Nouveau Projet',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 50)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: TextFormField(
                    controller: nom,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent, width: 2.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                      hintText: 'Nom',
                      labelStyle: TextStyle(fontSize: 18),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Le champ d\'e-mail ne peut pas être vide';
                      }
                      return null; // Return null when there's no error.
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 3.5, bottom: 3.5)),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: TextFormField(
                      controller: description,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.pinkAccent, width: 2.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width: 2.5),
                        ),
                        hintText: 'Description',
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {});
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Le champ du mot de passe ne peut pas être vide';
                        }
                        return null; // Return null when there's no error.
                      },
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.pinkAccent,
                                    fixedSize: const Size(180, 40)),
                                onPressed: () {
                                  //ajoutProjet.add(projet)
                                  Navigator.pushNamed(context, '/homeplayerpage');
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Ajouter ce Projet",
                                      style: TextStyle(color: Colors.black,fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),

                            ]))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
