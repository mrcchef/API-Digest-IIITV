import 'package:api_digest_iiitv/widgets/display_questions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GMAIL',
        ),
      ),
      body: DisplayQuestions(),
    );
  }
}
