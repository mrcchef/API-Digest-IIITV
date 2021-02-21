import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Stack Overflow'),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/image3.png',
            fit: BoxFit.fitWidth,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
