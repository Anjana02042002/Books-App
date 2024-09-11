import 'dart:convert';
import 'package:http/http.dart' as http;

import '../MyAlbum/album.dart';

class Apiservice {
  Future<dynamic> fetchdata() async {
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
      if (response.statusCode == 200) {
        List json1 = jsonDecode(response.body);
        var myalbum = json1.map((e) => MyAlbum.fromJson(e)).toList();
        return myalbum;
      }
    } catch (e) {
      print("${e.toString()}");
    }
  }
}
