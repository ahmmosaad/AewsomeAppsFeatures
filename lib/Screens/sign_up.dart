import 'package:flutter/material.dart';
import 'package:modern_living/const.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}



class _SignUpState extends State<SignUp> {

  bool isHidden = false;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var screen = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          height: size.height - screen.padding.top,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: size.height * .06,),
              Text(
                'Log in',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: black,
                    fontFamily: poppins),
                textAlign: TextAlign.center,

              ),
              SizedBox(height: size.height * .1,),
              TextFormField(
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily: poppins),

                    fillColor: faintBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    )
                ),
              ),
              SizedBox(height: size.height * .01,),
              TextFormField(
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),
                obscureText: isHidden,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye, color: isHidden ?Colors.black54: Colors.blue  ,), onPressed: (){
                      setState(() {
                        isHidden = !isHidden;
                      });
                    }),
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily: poppins),
                    fillColor: faintBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    )
                ),
              ),
              SizedBox(height: size.height * .01,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: (){}, child:Text(
                    'Forgot Password ?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: poppins),

                  ), ),
                ],
              ),
              SizedBox(height: size.height * .03,),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: size.height * .07,
                  width: size.width * .87,
                  color: green,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: whiteGreish,
                          fontFamily: poppins),
                      textAlign: TextAlign.center,

                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * .1,),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: size.height * .07,
                  width: size.width * .87,
                  color: Colors.teal.withOpacity(.3),
                  child: FlatButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Log in With Google',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontFamily: poppins),
                          textAlign: TextAlign.center,

                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(google,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * .01,),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: size.height * .07,
                  width: size.width * .87,
                  color: Colors.teal.withOpacity(.3),
                  child: FlatButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Log in With Facebook',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: poppins),
                          textAlign: TextAlign.center,

                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(face,),
                        ),
                      ],
                    ),
                  ),
                ),
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
                  TextButton(onPressed: (){}, child: Text(
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
