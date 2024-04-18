import 'package:http/http.dart' as http;
import 'dart:convert';
import 'api.dart';
//import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, dynamic>> getPlayerStats(String? email) async {
  final response = await http.get(
    Uri.parse(
        'http://s3-4676.nuage-peda.fr/BlackJack/api/joueurs?page=1&email=$email'),
    headers: {
      'Content-Type': 'application/ld+json',
    },
  );


  if (response.statusCode == 200) {
    var responseData = json.decode(response.body);
    var alt = responseData['hydra:member'];
    if (alt.isNotEmpty) {
      var altStats = alt[0];
      return {
        'id': altStats['id'],
        'prenom': altStats['prenom'],
        'age': altStats['age'],
        'prenom': altStats['prenom'],
        'prenom': altStats['prenom'],
        'prenom': altStats['prenom'],
        'prenom': altStats['prenom'],
        'prenom': altStats['prenom'],
        // Ajoute d'autres champs selon la structure des données de la réponse
      };
    } else {
      // Aucun joueur trouvé avec cet e-mail.
      return {
        'email': null, // ou une valeur par défaut si tu préfères
      };
    }
  } else {
    // Retourner un dictionnaire avec une valeur par défaut
    return {
      'email': null,
    };
  }
}

