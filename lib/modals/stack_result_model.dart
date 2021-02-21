import 'package:api_digest_iiitv/modals/stack_model.dart';
import 'package:flutter/cupertino.dart';

class StackResultModel with ChangeNotifier {
  List<StackModel> questions = [];

  StackResultModel({this.questions});

  StackResultModel.fromJson(Map<String, dynamic> json) {
    // final List<StackModel> ques = [];
    if (json['items'] != null) {
      // movies = new List<MovieModel>();
      json['items'].forEach((v) {
        questions.add(new StackModel.fromJson(v));
      });
    }
    // print(questions);
    // questions = ques;
    // notifyListeners();
  }
}
