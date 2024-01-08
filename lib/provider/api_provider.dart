import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rickandmortyapp/models/character_model.dart';

class ApiProvider with ChangeNotifier {
  final url = 'rickandmortyapi.com';
  List<Character> characters = [];

  Future<void> getCharacters() async {
    final result = await http.get(Uri.https(url, "/api/character"));
    final response = charecterResponseFromJson(result.body);
    characters.addAll(response.results!);
  }
}
