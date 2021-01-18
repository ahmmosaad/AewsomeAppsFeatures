import 'package:flutter/material.dart';

import '../const.dart';
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