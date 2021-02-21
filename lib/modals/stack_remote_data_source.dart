import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/core/api_constants.dart';
import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_model.dart';
import 'package:api_digest_iiitv/modals/stack_result_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class StackRemoteDataSource extends ChangeNotifier {
  Future<dynamic> getQuestions();
}

class StackRemoteDataSourceImpl extends StackRemoteDataSource {
  final ApiClinet apiClinet;

  StackRemoteDataSourceImpl({this.apiClinet});

  Future<List<StackEntity>> getQuestions() async {
    final responseBody = await apiClinet.get("questions");
    final questions = StackResultModel.fromJson(responseBody).questions;
    // print(questions);

    return questions;
  }

  Future<List<StackEntity>> getSearchQuestions(
      {String tags, String title}) async {
    final responseBody =
        await apiClinet.get("search/excerpts", tags: tags, title: title);
    final questions = StackResultModel.fromJson(responseBody).questions;
    print(questions);

    return questions;
  }
}
