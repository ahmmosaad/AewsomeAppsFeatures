import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_living/Screens/resturants.dart';
import 'package:modern_living/Widgets/home_section_header_list.dart';
import 'package:modern_living/Widgets/home_tabbar_item.dart';
import 'package:modern_living/const.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: size.width,
            // height: size.height,
            child: Column(
              children: [

                SizedBox(
                  height: size.height * .025,
                ),
                Container(
                  height: size.height * .06,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, i) {
                        List<String> catgs = ['Restaurants', 'Cafe Shop'];
                        return HomeTabBarItem(title: catgs[i],screen: Restaurants(),);
                      }),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                HomeSectionHeaderAndList(title: 'Popular Food',action: (){},sectionList: productsOffers,
               sectionType: 0,
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                HomeSectionHeaderAndList(title: 'Food Offers',action: (){},sectionList: productsOffers,
               sectionType: 1,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}









