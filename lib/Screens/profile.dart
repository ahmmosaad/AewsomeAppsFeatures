import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_living/const.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: size.height * .35,
              width: size.width,
              child: Stack(
                children: [
                  Container(
                    height: size.height * .27,
                    width: size.width,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Spacer(flex: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(icon: Icon(Icons.arrow_back_ios, size: 30, color: whiteGreish), onPressed: (){
                              Navigator.pop(context);
                            }),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                   color: whiteGreish,
                                  textBaseline: TextBaseline.ideographic,
                                  fontFamily: poppins),

                            ),

                            PopupMenuButton(itemBuilder: (c){}, color: whiteGreish,),
                          ],
                        ),
                        Spacer(flex: 2,),

                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                      right: size.width * .3,
                      child: CircleAvatar(
                        radius: size.height * .09,
                        backgroundImage: AssetImage(profile),
                      ))
                ],
              ),
            ),
            SizedBox(height: size.height * .03,),
            Text(
              'Catrina R. Reddington',
              style: TextStyle(
                  height: 1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontFamily: poppins),
              textAlign: TextAlign.start,

            ),
            SizedBox(height: size.height * .03,),
            ProfileRowItem(size: size,rowTitle: 'My Orders',),
            ProfileRowItem(size: size,rowTitle: 'My Payment Cards',),
            ProfileRowItem(size: size,rowTitle: 'My Address',),
            ProfileRowItem(size: size,rowTitle: 'Promocodes',),
            ProfileRowItem(size: size,rowTitle: 'Share Promocodes',),
            ProfileRowItem(size: size,rowTitle: 'FAQ',),
            ProfileRowItem(size: size,rowTitle: 'Exit',),

          ],
        ),
      ),

    );
  }
}

class ProfileRowItem extends StatelessWidget {
  final String rowTitle;
  const ProfileRowItem({
    Key key,
    @required this.size,
    this.rowTitle
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: size.width,
      height: size.height * .06,
      decoration: BoxDecoration(
        color: faintBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              rowTitle,
              style: TextStyle(
                  height: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  textBaseline: TextBaseline.ideographic,
                  fontFamily: poppins),

            ),
            Spacer(),
            IconButton(icon: Icon(Icons.navigate_next_sharp, size: 35,), onPressed: (){})
          ],
        ),
      ),
    );
  }
}
