import 'package:api_digest_iiitv/screens/about_us.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/welcome_page.dart';
import './screens/home_page.dart';
import 'modals/questions.dart';

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
        ChangeNotifierProvider(create: (_) => Questions()),
      ],
      child: Consumer<Questions>(
        builder: (ctx, question, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.lightGreen,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes: {
              HomePage.routeName: (ctx) => HomePage(),
              AboutUs.routeName: (ctx) => AboutUs(),
            },
            home: ChangeNotifierProvider<Questions>(
              create: (_) => Questions(),
              builder: (context, _) => WelcomePage(),
            ),
          );
        },
      ),
    );
  }
}
