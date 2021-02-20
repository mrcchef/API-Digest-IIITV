import '../screens/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GMAIL',
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text(
            'Welcome to Our App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/image1.png'),
          ),
          SizedBox(height: 40),
          Text(
            'Click here to go to the next page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            child: Icon(
              Icons.forward,
              size: 100,
            ),
            onTap: () => Navigator.of(context).pushNamed(HomePage.routeName),
          ),
        ],
      ),
    );
  }
}
