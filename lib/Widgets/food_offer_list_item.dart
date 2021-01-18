import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/const.dart';

class FoodOfferListItem extends StatelessWidget {
  const FoodOfferListItem({
    Key key,
    this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 10, top: 5),
      width: size.width * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(product.image),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black26,
                Colors.black26,
              ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:10),
            Row(
              children: [
                Spacer(),
                Container(
                  height: size.height * .035,
                  width: size.width * .14,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), topLeft: Radius.circular(25)),

                  ),
                  child: Center(
                    child: Text(
                      '10%%',
                      style: TextStyle(
                          fontSize: 13,
                          color: whiteGreish,
                          fontWeight: FontWeight.bold,
                          fontFamily: poppins),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              product.name,
              style: TextStyle(
                  fontSize: 13,
                  color: whiteGreish,
                  fontWeight: FontWeight.bold,
                  fontFamily: poppins),
            ),
            Text(
              product.desc,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 10,
                  color: whiteGreish,
                  fontFamily: poppins),
            ),
            Row(
              children: [
                Text(
                  '${product.price.toString()} USD',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: whiteGreish,
                      fontFamily: poppins),
                ),
                Spacer(),
                Icon(Icons.star_half_outlined, color: Colors.white,size: 15,),
                Text(
                  product.rating.toString(),
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: whiteGreish,
                      fontFamily: poppins),
                ),
              ],),
          ],
        ),
      ),
    );
  }
}