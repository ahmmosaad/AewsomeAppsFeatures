import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_living/const.dart';
import 'dart:ui' as ui;

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {



  PageController _pageController = PageController();
  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> images = [
      onboard1,
      onboard2,
      onboard3,
    ];
    List<String> descs = [
      'Choose your favourite dish from the nearest resturant or cafe',
      'Taste fresh and delicious meal any time and any where',
      'We also deliver food and drinks from the nearest supermarkets ',
    ];
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              height: size.height * .8,
              width: size.width,
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (i) {
                    setState(() {
                      currentPage = i;
                    });
                  },
                  itemCount: images.length,
                  itemBuilder: (c, i) {
                    return PageViewContent(
                      size: size,
                      image: images[i],
                      desc: descs[i],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  images.length,
                  (index) => buildContainer(index)),
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: size.height * .065,
                width: size.width * .8,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                        fontSize: 16, color: whiteGreish, fontFamily: poppins),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
              child: Text(
                'Skip',
                style: TextStyle(color: green, fontFamily: poppins),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildContainer(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
                      margin: EdgeInsets.all(5),
                      width: currentPage == index ? 12 : 6,
                      height: 6,
      decoration: BoxDecoration(
          color: currentPage == index ? green : faintBlue,
          borderRadius: BorderRadius.circular(5)
      ),
                    );

  }
}

class PageViewContent extends StatelessWidget {
  final String image;
  final String desc;

  const PageViewContent({
    Key key,
    @required this.size,
    this.image,
    this.desc,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: size.height * .6,
            width: size.width,
            child: CustomPaint(
              painter: PaintShadow(
                  shadow: Shadow(
                    color: faintBlue,
                    offset: Offset(0, 0),
                    blurRadius: 20,
                  ),
                  clipper: ClipClass()),
              child: ClipPath(
                clipper: ClipClass2(),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  )),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              desc,
              style: TextStyle(
                  fontSize: 16, color: Color(0xff3D3D3C), fontFamily: poppins),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class ClipClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.8);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class ClipClass2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.79);
    path.quadraticBezierTo(
        size.width / 2, size.height * .99, size.width, size.height * 0.79);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class PaintShadow extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;

  PaintShadow({@required this.shadow, @required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipRect = clipper.getClip(size).shift(Offset(0, 0));
    canvas.drawPath(clipRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
