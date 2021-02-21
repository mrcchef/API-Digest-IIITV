import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class QuestionDataProvider with ChangeNotifier {
  List<StackEntity> questions = [];
  bool loading = false;
  ApiClinet apiClinet;
  String tags;
  String title;
  getQuestionData(
    context,
  ) async {
    loading = true;
    apiClinet = ApiClinet();
    questions =
        await StackRemoteDataSourceImpl(apiClinet: apiClinet).getQuestions();
    loading = false;

    notifyListeners();
  }

  getQuestionDataSearch(BuildContext context, String tag, String title) async {
    loading = true;
    apiClinet = ApiClinet();
    print("value tag $tag");
    questions = await StackRemoteDataSourceImpl(apiClinet: apiClinet)
        .getSearchQuestions(tags: tag, title: title);
    loading = false;

    notifyListeners();
  }
}
