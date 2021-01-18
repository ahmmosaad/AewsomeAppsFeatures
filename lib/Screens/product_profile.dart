import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Screens/shopping_cart.dart';
import 'package:modern_living/const.dart';

class ProductProfile extends StatelessWidget {
  final Product product;

  ProductProfile({this.product});

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
          product.name,
          style: TextStyle(
              fontSize: 25,
              color: black,
              fontWeight: FontWeight.bold,
              fontFamily: poppins),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: size.height * .4,
              width: size.width,
              color: green,
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              product.desc,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontFamily: poppins),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Row(
              children: [
                Text(
                  '${product.weight} | ${product.cal}',
                  style: TextStyle(
                      fontSize: 14,
                      color: green,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Spacer(),
                RatingBar(
                  initialRating: product.rating,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 20,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: green,
                    ),
                    half: Icon(
                      Icons.star_half,
                      color: green,
                    ),
                    empty: Icon(
                      Icons.star_border,
                      color: green,
                    ),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    product.rating.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontFamily: poppins),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.indeterminate_check_box,
                    color: Colors.black38,
                  ),
                  onPressed: () {},
                ),
                Text(
                  product.quantity.toString(),
                  style: TextStyle(
                      fontSize: 14,
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.black38,
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Text(
                  '${product.price.toString()} USD',
                  style: TextStyle(
                      fontSize: 14,
                      color: black,
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
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>  ShoppingCart()));
                },
                child: Container(
                  height: size.height * .06,
                  width: size.width * .9,
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
                  child: Center(
                    child:  Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontSize: 16,
                          color: whiteGreish,
                          fontWeight: FontWeight.bold,
                          fontFamily: poppins),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
