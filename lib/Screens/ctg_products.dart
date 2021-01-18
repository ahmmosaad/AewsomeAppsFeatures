import 'package:flutter/material.dart';
import 'package:modern_living/Screens/product_profile.dart';
import 'package:modern_living/const.dart';

import '../Widgets/ctg_product_card.dart';

class CtgProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: size.height * .18,
              width: size.width,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(25),

              ),
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back_ios_sharp, color: whiteGreish,), onPressed: (){
                        Navigator.pop(context);
                      }),
                      Text(
                        'CITRONELLO'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 22,
                            color: whiteGreish,
                            fontWeight: FontWeight.bold,
                            fontFamily: poppins),
                      ),
                      IconButton(icon: Icon(Icons.search, color: whiteGreish,), onPressed: (){}),
                    ],
                  )
              ),
            ),
            Text(
              'Salads',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins),
              textAlign: TextAlign.center,
            ),
            Expanded(child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (c, i){
                  return CtgProductCard(product: products[i]);
                }) ),
          ],
        ),
      ),
    );
  }
}


