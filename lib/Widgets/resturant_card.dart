import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/resturant_model.dart';
import 'package:modern_living/Screens/resturant_ctgs.dart';

import '../const.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key key,
    @required this.resturant,
    this.screen,
  }) : super(key: key);
  final Widget screen;
  final ResturantM resturant;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (c)=> screen));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: size.height * .25,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: resturant.img.length<25 ? AssetImage(resturant.img): NetworkImage(resturant.img),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [


              Text(
                resturant.name,
                style: TextStyle(
                    fontSize: 22,
                    color: whiteGreish,
                    fontWeight: FontWeight.bold,
                    fontFamily: poppins),
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    resturant.cuisineType,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: whiteGreish,
                        fontFamily: poppins),
                  ),
                  SizedBox(width: 15,),
                  Text(
                    resturant.timeRange,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: whiteGreish,
                        fontFamily: poppins),
                  ),
                  SizedBox(width: 15,),
                  Text(
                    resturant.priceRange,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: whiteGreish,
                        fontFamily: poppins),
                  ),
                  Spacer(),
                ],),
            ],
          ),
        ),

      ),
    );
  }
}
