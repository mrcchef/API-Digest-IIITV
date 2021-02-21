import 'package:api_digest_iiitv/core/api_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClinet {
  String path;

  dynamic get() async {
    final url =
        "https://api.stackexchange.com/2.2/questions?order=desc&sort=activity&site=stackoverflow";
    // "${ApiConstants.BASE_URL}questions?&order=desc&sort=activity&site=stackoverflow";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return responseBody;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
