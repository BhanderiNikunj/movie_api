import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_api/Screen/Home/Model/HomeModel.dart';

class ApiHelper {
  Future<HomeModel> ApiCall(Name) async {
    String link =
        "https://imdb8.p.rapidapi.com/auto-complete?q=$Name";

    Uri uri = Uri.parse(link);

    var result = await http.get(
      uri,
      headers: {
        "X-RapidAPI-Key": "8d808dcb09msha62d4c0e8e4b3cep10b91ajsn396f04a699a5",
        "X-RapidAPI-Host": "imdb8.p.rapidapi.com",
      },
    );

    var json = jsonDecode(result.body);

    HomeModel h1 = HomeModel.fromJson(json);

    return h1;
  }
}
