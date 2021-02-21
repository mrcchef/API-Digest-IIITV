import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_remote_data_source.dart';
import 'package:api_digest_iiitv/widgets/question_card.dart';
import 'package:flutter/material.dart';

class DisplayQuestions extends StatelessWidget {
  Map<String, dynamic> response;
  List<StackEntity> questions;

  @override
  Widget build(BuildContext context) {
    response = ModalRoute.of(context).settings.arguments;
    questions = response['question'];
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "All Questions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return QuestionCard(questions[index]);
              },
              itemCount: questions.length,
            ),
          ),
        ],
      ),
    );
  }
}