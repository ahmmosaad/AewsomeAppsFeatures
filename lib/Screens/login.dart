import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_living/Screens/homePage.dart';
import 'package:modern_living/Screens/root_page.dart';
import 'package:modern_living/Screens/sign_up.dart';
import 'package:modern_living/Widgets/full_width_button.dart';
import 'package:modern_living/Widgets/login_input_item.dart';
import 'package:modern_living/Widgets/social_login_button.dart';
import 'package:modern_living/const.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isHidden = false;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var screen = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          height: size.height - screen.padding.top,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: size.height * .04,),
              Text(
                'Log in',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: black,
                    fontFamily: poppins),
                textAlign: TextAlign.center,

              ),
              SizedBox(height: size.height * .08,),
              UserInputItem(title: 'Email',),
              SizedBox(height: size.height * .01,),
              UserInputItem(isPass: true,title: 'Password'),
              SizedBox(height: size.height * .01,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: poppins),

                  ),),
                ],
              ),
              SizedBox(height: size.height * .03,),
              FullWidthButton(action: (){
                Navigator.push(context, MaterialPageRoute(builder: (c)=> RootPage()));
              },
              name: 'Log In',
              ),
              SizedBox(height: size.height * .1,),
              SocialLoginButton(
                title: 'Login With Google',
                icon: google,
                action: (){},
              ),
              SizedBox(height: size.height * .01,),
              SocialLoginButton(
                title: 'Login With Facebook',
                icon: face,
                action: (){},
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a Member ?',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontFamily: poppins),
                    textAlign: TextAlign.center,

                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) =>
                        SignUp()));
                  }, child: Text(
                    'Join now',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: poppins),
                    textAlign: TextAlign.center,

                  ),)
                ],
              ),
            ],
          ),

        ),
      )),
    );
  }
}





