import 'package:api_digest_iiitv/widgets/appbar.dart';
import 'package:api_digest_iiitv/widgets/main_drawer.dart';
import 'package:api_digest_iiitv/widgets/team_card.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/about-us';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                  //textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'We are a Team of two students currently persuing B.Tech 2nd Year from IIIT Vadodara and we have designed this app because we felt there was an absence of a proper mobile app for stack oveflow',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'OUR TEAM',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                  //textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeamCard(
                  fName: 'Abhijeet',
                  lName: 'Tamrakar',
                  image: 'assets/images/abhijeet.png',
                ),
                TeamCard(
                    fName: 'Kshittiz',
                    lName: 'Bhardwaj',
                    image: 'assets/images/kshittiz2.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
