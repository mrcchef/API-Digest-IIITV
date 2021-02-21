import 'package:api_digest_iiitv/core/api_constants.dart';
import 'package:api_digest_iiitv/modals/stack_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class StackRemoteDataSource {
  Future<dynamic> getQuestions();
}

class StackRemoteDataSourceImpl extends StackRemoteDataSource {
  Future<dynamic> getQuestions() async {
    final url =
        "${ApiConstants.BASE_URL}questions?&order=desc&sort=activity&site=stackoverflow";
    final response = await http.get(url);
    final responseBody = json.decode(response.body);

    print(responseBody);
    return responseBody;
  }
}
