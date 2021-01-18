import 'package:flutter/material.dart';
import 'package:modern_living/Screens/resturant_ctgs.dart';
import 'package:modern_living/Widgets/resturant_card.dart';
import 'package:modern_living/const.dart';

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Resturants',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: black,
                    fontFamily: poppins),
                textAlign: TextAlign.center,
              ),
              Expanded(child: ListView.builder(
                itemCount: restData.length,
                  itemBuilder: (c,i){
                    return RestaurantCard( resturant: restData[i], screen: ResturantCtgs(),);
                  })),
            ],
          ),
        ),
      ),
    );
  }
}

