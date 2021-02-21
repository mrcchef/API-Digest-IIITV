import 'package:api_digest_iiitv/modals/stack_remote_data_source.dart';
import 'package:flutter/material.dart';

import './screens/welcome_page.dart';
import './screens/home_page.dart';

void main() {
  final StackRemoteDataSource obj = StackRemoteDataSourceImpl();
  final response = obj.getQuestions();
  // print(response);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        HomePage.routeName: (ctx) => HomePage(),
      },
      home: WelcomePage(),
    );
  }
}
