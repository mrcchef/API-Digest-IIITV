import 'package:flutter/material.dart';

class GetQuestions {
  final ApiClinet apiClinet = ApiClinet();
  final StackRemoteDataSource obj =
      StackRemoteDataSourceImpl(apiClinet: apiClinet);
  final question = await obj.getQuestions();
}
