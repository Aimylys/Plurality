import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';


/*class Api {
  Future<String> token() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }

  Future<Map<String, dynamic>> login(String? email, String? password) async {
    var data = {
      'email': email,
      'password': password,
    };

    var fullUrl =
        'http://s3-4676.nuage-peda.fr/BlackJack/api/authentication_token' +
            await token();

    try {
      var response = await http.post(
        Uri.parse(fullUrl),
        body: jsonEncode(data),
        headers: <String, String>{
          'Content-Type': 'application/ld+json; charset=UTF-8',
        },
      );

      var body = json.decode(response.body);

      if (response.statusCode == 401) {
        return {
          'status': 'error',
          'message': 'Identifiants invalides',
          'code': 401,
        };
      }

      if (body['token'] != null && email != null && password != null ) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('token', body['token']);
        localStorage.setString('email', email);
        localStorage.setString('password', password);

        return {
          'status': 'success',
          'message': 'Connexion réussie',
          'code': 200,
        };
      }

      return {
        'status': 'error',
        'message': 'Erreur inconnue',
        'code': response.statusCode,
      };
    } catch (e) {
      return {
        'status': 'error',
        'message': 'Services momentanément indisponibles',
        'code': 503,
      };
    }
  }
}*/
