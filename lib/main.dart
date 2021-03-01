import 'package:api_digest_iiitv/modals/stack_result_model.dart';
import 'package:api_digest_iiitv/screens/about_us.dart';
import 'package:api_digest_iiitv/screens/answer.dart';
import 'package:api_digest_iiitv/usecase/get_questions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/welcome_page.dart';
import './screens/home_page.dart';
import 'modals/questions.dart';
import 'modals/stack_remote_data_source.dart';

void main() {
  // print(response);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuestionDataProvider()),
      ],
      child: Consumer<QuestionDataProvider>(
        builder: (ctx, stackResultModel, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.lightGreen,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes: {
              HomePage.routeName: (ctx) => HomePage(),
              AboutUs.routeName: (ctx) => AboutUs(),
              Answer.routeName: (ctx) => Answer(),
            },
            home: ChangeNotifierProvider<QuestionDataProvider>(
              create: (_) => QuestionDataProvider(),
              builder: (context, _) => WelcomePage(),
            ),
          );
        },
      ),
    );
  }
}
