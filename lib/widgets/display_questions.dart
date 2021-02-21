import 'package:api_digest_iiitv/modals/questions.dart';
import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/widgets/question_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayQuestions extends StatefulWidget {
  @override
  _DisplayQuestionsState createState() => _DisplayQuestionsState();
}

class _DisplayQuestionsState extends State<DisplayQuestions> {
  Map<String, dynamic> response;

  List<StackEntity> questions;

  @override
  Widget build(BuildContext context) {
    questions = Provider.of<Questions>(context, listen: false).questions;
    return Container(
      child: Expanded(
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
      ),
    );
  }
}
