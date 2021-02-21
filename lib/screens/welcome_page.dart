import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/modals/stack_remote_data_source.dart';
import 'package:api_digest_iiitv/modals/stack_result_model.dart';
import 'package:provider/provider.dart';

import '../widgets/appbar.dart';

import '../screens/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isLoading = false;

  // Future<void> enter() async {
  //   setState(() {
  //     isLoading = true;
  //   });

  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height * 0.05;
    return Scaffold(
      appBar: Appbar(),
      body: Column(
        children: [
          SizedBox(height: h),
          Text(
            'Welcome to Our App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              //color: Colors.green,
            ),
          ),
          SizedBox(height: h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/image1.png'),
          ),
          SizedBox(height: h),
          Text(
            'Click here to go to the next page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              //color: Colors.green,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.forward,
              size: MediaQuery.of(context).size.height * 0.15,
            ),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(HomePage.routeName),
          ),
        ],
      ),
    );
  }
}
