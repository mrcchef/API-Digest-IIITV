import 'package:api_digest_iiitv/core/api_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClinet {
  String path;
  // String url;
  dynamic get(String query, {String tags, String title}) async {
    String url;
    if (query == "search/excerpts") {
      if (tags.isEmpty && title.isEmpty)
        url =
            "${ApiConstants.BASE_URL}$query?order=desc&sort=activity&site=stackoverflow";
      else if (title.isEmpty)
        url =
            "${ApiConstants.BASE_URL}$query?order=desc&sort=activity&tagged=$tags&site=stackoverflow";
      else if (tags.isEmpty)
        url =
            "${ApiConstants.BASE_URL}$query?order=desc&sort=activity&title=$title&site=stackoverflow";
      else
        url =
            "${ApiConstants.BASE_URL}$query?order=desc&sort=activity&tagged=$tags&title=$title&site=stackoverflow";
    } else
      url =
          "${ApiConstants.BASE_URL}$query?order=desc&sort=activity&site=stackoverflow";
    print("tags $tags");
    print("title $title");
    print(url);

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
