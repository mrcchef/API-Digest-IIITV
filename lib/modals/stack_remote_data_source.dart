import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/core/api_constants.dart';
import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_model.dart';
import 'package:api_digest_iiitv/modals/stack_result_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class StackRemoteDataSource {
  Future<dynamic> getQuestions();
}

class StackRemoteDataSourceImpl extends StackRemoteDataSource {
  final ApiClinet apiClinet;

  StackRemoteDataSourceImpl({this.apiClinet});

  Future<List<StackEntity>> getQuestions() async {
    final responseBody = await apiClinet.get();
    final questions = StackResultModel.fromJson(responseBody).questions;
    return questions;
  }
}
