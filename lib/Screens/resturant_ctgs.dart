import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modern_living/Screens/ctg_products.dart';
import 'package:modern_living/Widgets/ctg_card.dart';
import 'package:modern_living/const.dart';

class ResturantCtgs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: size.height * .25,
            width: size.width,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(25),

              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
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
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'Frensh Cuisine',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: whiteGreish,
                              fontFamily: poppins),
                        ),
                        SizedBox(width: 15,),
                        Text(
                            '30-40 min',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: whiteGreish,
                              fontFamily: poppins),
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "20-30 USD",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: whiteGreish,
                              fontFamily: poppins),
                        ),
                        Spacer(),
                      ],),
                  ],
                )
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: ctgs.length,
                    itemBuilder: (c,i){
                      return CtgCard(category: ctgs[i],screen: CtgProducts(),);
                    })),
          ],
        ),
      ),
    );
  }
}

