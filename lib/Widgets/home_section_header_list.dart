import 'package:flutter/material.dart';
import 'package:modern_living/Widgets/populer_food_list_item.dart';
import 'package:modern_living/const.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Widgets/food_offer_list_item.dart';

class HomeSectionHeaderAndList extends StatelessWidget {
  const HomeSectionHeaderAndList({
    this.title,
    this.action,
    this.sectionList,
    this.sectionType
  });

  final String title;
  final Function action;
  final List<Product> sectionList;
  final int sectionType;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .3,
      width: size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: black,
                    fontFamily: poppins),
                textAlign: TextAlign.center,
              ),
              Container(
                // height: size.height * .05,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: green, width: 2)),
                child: Center(
                  child: GestureDetector(
                    onTap: action,
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 12,
                          color: green,
                          fontFamily: poppins),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, i) => sectionType == 0 ? PopularFoodListItem(product: sectionList[i],):
                  FoodOfferListItem(product: sectionList[i],)
              ) )
        ],
      ),
    );
  }
}