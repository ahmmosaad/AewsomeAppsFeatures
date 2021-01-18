import 'package:flutter/material.dart';
import 'package:modern_living/Screens/onboarding.dart';
import 'package:modern_living/const.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();

}


class _SplashState extends State<Splash> {

  bool _done = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) =>
        pushNav()
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;


    return Material(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(back),
              fit: BoxFit.cover,
            )
        ),
        child: Container(

          color: green.withOpacity(.7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: size.height * .15,
                  width: size.width * .2,
                  child: Image.asset(logo, fit: BoxFit.contain,)),
              SizedBox(width: size.width * .05,),
              Text(
                'easy\neat',
                style: TextStyle(
                    height: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: whiteGreish,
                    fontFamily: poppins),
                textAlign: TextAlign.start,

              ),
            ],
          ),
        ),
      ),
    );
  }

  pushNav() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }
}
