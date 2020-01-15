import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future<dynamic> getData() async {
    http.Response response = await http.get(url);
    String data;
    response.statusCode == 200
        ? data = response.body
        : print(response.statusCode);
    return jsonDecode(data);
  }
}
