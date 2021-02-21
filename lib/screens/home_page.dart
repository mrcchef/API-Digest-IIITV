import 'package:api_digest_iiitv/usecase/get_questions.dart';
import 'package:api_digest_iiitv/widgets/appbar.dart';
import 'package:api_digest_iiitv/widgets/display_questions.dart';
import 'package:api_digest_iiitv/widgets/main_drawer.dart';
import 'package:api_digest_iiitv/widgets/search_by_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final questionMdl =
        Provider.of<QuestionDataProvider>(context, listen: false);
    questionMdl.getQuestionData(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final questionMdl = Provider.of<QuestionDataProvider>(context);
    return Scaffold(
      appBar: Appbar(),
      drawer: MainDrawer(),
      body: Column(
        children: [
          SearchByTitle(),
          if (questionMdl.loading)
            Center(
              child: CircularProgressIndicator(),
            ),
          if (!questionMdl.loading)
            DisplayQuestions(questions: questionMdl.questions),
        ],
      ),
    );
  }
}
