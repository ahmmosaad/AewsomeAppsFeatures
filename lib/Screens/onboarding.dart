import 'package:flutter/material.dart';
import 'package:modern_living/Screens/homePage.dart';
import 'package:modern_living/Screens/login.dart';
import 'package:modern_living/Screens/root_page.dart';
import 'package:modern_living/Widgets/page_view_content.dart';
import 'package:modern_living/const.dart';


class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}


class _OnBoardingScreenState extends State<OnBoardingScreen> {


@override
  void initState() {


    Future.delayed(Duration(seconds: 2)).then((value) =>
        _pageController.nextPage(
            duration: Duration(seconds: 1), curve: Curves.ease)
    ).then((value) {
      Future.delayed(Duration(seconds: 2)).then((value) =>
          _pageController.nextPage(
              duration: Duration(seconds: 1), curve: Curves.ease)
      );

    });

    super.initState();
  }


PageController _pageController = PageController();
int currentPage = 0;
  @override
  Widget build(BuildContext context) {


    var size = MediaQuery.of(context).size;


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
            currentPage != 2 ?ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: GestureDetector(
                onTap: (){
                  _pageController.nextPage(
                      duration: Duration(seconds: 1), curve: Curves.ease);
                },
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
            ): SizedBox(),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c)=> LogIn()));
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


