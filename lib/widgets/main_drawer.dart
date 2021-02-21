import '../screens/about_us.dart';
import '../screens/home_page.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        //   color: HexColor('#ED6A5A'),
      ),
      title: Text(
        title,
        style: TextStyle(
          // fontFamily: 'QuickSand',
          color: Colors.grey[600],
          fontFamily: 'QuickSand',
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        // textAlign: TextAlign.left,
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/image3.png',
                  //fit: BoxFit.fitWidth,
                  // alignment: Alignment.topLeft,
                ),
                SizedBox(width: 10),
                Text(
                  'Stack Overflow',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'QuickSand',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    //color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          buildListTile(
            'Home Page',
            Icons.home,
            () {
              Navigator.of(context).pushNamed(HomePage.routeName);
            },
          ),
          buildListTile(
            'About Us',
            Icons.sentiment_satisfied_alt_outlined,
            () {
              Navigator.of(context).pushNamed(AboutUs.routeName);
            },
          ),
        ],
      ),
    );
  }
}
