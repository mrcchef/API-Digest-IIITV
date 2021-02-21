import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_model.dart';

class StackResultModel {
  List<StackEntity> questions = [];

  StackResultModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      // movies = new List<MovieModel>();
      json['items'].forEach((v) {
        questions.add(new StackModel.fromJson(v));
      });
    }
  }
}
