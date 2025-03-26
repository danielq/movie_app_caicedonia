import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _apiKey = 'f7baea359ce18783053eda3ea74bc4cf';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider() {
    print(' Movies Provider Inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(this._baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language});
    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);
    print(decodedData);
  }
}
