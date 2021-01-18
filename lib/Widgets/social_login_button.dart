import 'package:flutter/material.dart';
import 'package:modern_living/const.dart';

class SocialLoginButton extends StatelessWidget {

  final String title;
  final Function action;
  final String icon;
  const SocialLoginButton({
    this.action,
    this.title,
    this.icon
  });



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: size.height * .07,
        width: size.width * .87,
        color: Colors.teal.withOpacity(.3),
        child: FlatButton(
          onPressed: action,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontFamily: poppins),
                textAlign: TextAlign.center,

              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(icon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}