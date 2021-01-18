import 'package:flutter/material.dart';
import 'package:modern_living/const.dart';

class HomeTabBarItem extends StatelessWidget {
  const HomeTabBarItem({
    this.title,
    this.screen
  });

  final String title;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: size.height * .05,
      width: size.width * .4,
      decoration: BoxDecoration(
        color: faintBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (c)=> screen));
          },
          child: Text(
            title,
            style:
            TextStyle(color: black, fontFamily: poppins),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
