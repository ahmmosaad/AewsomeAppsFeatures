import 'package:flutter/material.dart';
import 'package:modern_living/Widgets/cart_item_card.dart';
import 'package:modern_living/const.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: whiteGreish,
        title: Text(
          'Shopping Cart',
          style: TextStyle(
              fontSize: 25,
              color: black,
              fontWeight: FontWeight.bold,
              fontFamily: poppins),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: size.height * .05,),
            ListView.builder(
              itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (c,i){
                  return CartItemCard();
                }),
            SizedBox(height: size.height * .05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Text(
                  'Free',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Text(
                  '250 USD',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
              ],
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: GestureDetector(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (c)=>  ShoppingCart()));
                },
                child: Container(
                  height: size.height * .06,
                  width: size.width * .9,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: green,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.shade50,
                          offset: Offset(10,-10),
                          blurRadius: 5,
                          spreadRadius: 10,
                        ),
                      ]
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Make Order',
                        style: TextStyle(
                            fontSize: 16,
                            color: whiteGreish,
                            fontFamily: poppins),
                      ),
                      Spacer(),
                      Container(
                        width: size.width * .22,
                        height: size.height * .05,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            '250 USD',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: green,
                                fontFamily: poppins),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * .03,),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>  ShoppingCart()));
                },
                child: Container(
                  height: size.height * .06,
                  width: size.width * .9,
                  decoration: BoxDecoration(
                      color: faintBlue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.shade50,
                          offset: Offset(10,-10),
                          blurRadius: 5,
                          spreadRadius: 10,
                        ),
                      ]
                  ),
                  child: Center(
                    child:  Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontSize: 16,
                          color: green,
                          fontFamily: poppins),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * .08,),
          ],
        ),
      ),
    );
  }
}
