import 'dart:convert';

import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Questions extends ChangeNotifier {
  List<StackEntity> questions = [];

  Future<void> fetchAndShowQuestions() async {
    final url =
        "https://api.stackexchange.com/2.2/questions?order=desc&sort=activity&site=stackoverflow";
    // https://api.stackexchange.com/2.2/questions?order=desc&sort=activity&site=stackoverflow
    try {
      final response = await http.get(url);

      List<StackModel> extractedProduct = [];

      final Map<String, dynamic> extractedData = json.decode(response.body);

      // print(extractedData);

      extractedData.forEach((key, questionData) {
        print("1234567899+$key");
        print(questionData);
        // if (json[key] != null) {
        //   // movies = new List<MovieModel>();
        //   questionData[key].forEach((v) {
        //     extractedProduct.add(new StackModel.fromJson(v));
        //   });
        // }
      });

      // extractedProduct.forEach((element) {
      // print(element.title);
      // });
      questions = extractedProduct;
      notifyListeners();
      // print("${questions.length}");
    } catch (error) {
      print('Hello');
      print(error);
    }
  }
}
