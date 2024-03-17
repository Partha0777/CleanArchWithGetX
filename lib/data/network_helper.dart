import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl =
    "https://run.mocky.io/v3/c01d44a4-d9df-4498-8d9b-8f9b50830d7a";

class NetworkHelper {
  Future<dynamic> getData() async {
    final data = await http.get(Uri.parse(baseUrl));
    if (data.statusCode == 200) {
      return jsonDecode(data.body);
    } else {
      throw Exception("Response Failed!");
    }
  }
}
