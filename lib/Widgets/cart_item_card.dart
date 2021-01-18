import 'package:flutter/material.dart';

import 'package:modern_living/const.dart';

class CartItemCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 1),
      padding: EdgeInsets.all(10),
      height: size.height *.17,
      width: size.width,
      decoration: BoxDecoration(
        color: faintBlue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1 X',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontFamily: poppins),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                Spacer(),
                Text(
                  'Virginia Salad',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                SizedBox(height: 10,),
                Text(
                  'Vera Vera Resturant',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Text(
              '25 USD',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontFamily: poppins),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
                backgroundColor: whiteGreish,
                child: IconButton(icon: Icon(Icons.clear), onPressed: (){})),
          ],
        ),
      ),
    );
  }
}
