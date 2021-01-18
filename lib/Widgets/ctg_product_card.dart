import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Screens/product_profile.dart';
import 'package:modern_living/const.dart';


class CtgProductCard extends StatefulWidget {
  const CtgProductCard({
    this.product
  });

  final Product product;

  @override
  _CtgProductCardState createState() => _CtgProductCardState();
}

class _CtgProductCardState extends State<CtgProductCard> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      height: size.height * .2,
      width: size.width,
      decoration: BoxDecoration(
        color: whiteGreish,
        borderRadius: BorderRadius.circular(5),
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=> ProductProfile(
            product: widget.product,
          )));
        },
        child: Row(children: [
          Container(
            height: size.height * .2,
            width: size.width *.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    widget.product.image
                ),
              ),
            ),
          ),
          Expanded(child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.product.name.toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      color: green,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Text(
                  widget.product.desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Text(
                  '${widget.product.price.toString()} USD',
                  style: TextStyle(
                      fontSize: 14,
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontFamily: poppins),
                ),
                Row(

                  children: [
                    IconButton(icon: Icon(Icons.indeterminate_check_box, color: Colors.black38,),onPressed: (){
                      setState(() {
                        widget.product.quantity =widget.product.quantity-1 ;
                      });
                    },),
                    Text(
                      widget.product.quantity.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontFamily: poppins),
                    ),
                    IconButton(icon: Icon(Icons.add_circle, color: Colors.black38,),onPressed: (){
                      setState(() {
                        widget.product.quantity =widget.product.quantity+1 ;
                      });
                    },),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: GestureDetector(
                        onTap: (){
                          orders.add(widget.product);
                        },
                        child: Container(
                          height: size.height * .04,
                          // width: size.width * .23,
                          color: green,
                          child: Center(
                            child:  Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: whiteGreish,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: poppins),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],)
              ],
            ),
          ))
        ],),
      ),
    );
  }
}