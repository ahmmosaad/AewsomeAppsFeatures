
import 'package:flutter/material.dart';
import 'package:modern_living/Screens/homePage.dart';
import 'package:modern_living/Screens/root_page.dart';

import '../const.dart';

class FullWidthButton extends StatelessWidget {

  final String name;
  final Function action;

  const FullWidthButton({
    Key key,
    @required this.name,
  @required this.action
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: size.height * .07,
        width: size.width * .87,
        color: green,
        child: FlatButton(
          onPressed: action,
          child: Text(
            name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: whiteGreish,
                fontFamily: poppins),
            textAlign: TextAlign.center,

          ),
        ),
      ),
    );
  }
}