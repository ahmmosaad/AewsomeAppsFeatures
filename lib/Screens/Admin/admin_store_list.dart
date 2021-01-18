import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/resturant_model.dart';
import 'package:modern_living/Data/Repo/restaurants_repo.dart';
import 'package:modern_living/Screens/Admin/admin_store_ctg_list.dart';
import 'package:modern_living/Widgets/resturant_card.dart';

import '../../const.dart';
import 'add_new_store.dart';

class AdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN Stores PANEL'),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=> AddNewStore()));
          }),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<ResturantM>>(
                future: RestaurantsRep().loadedRestaurants(),
                builder: (c, d){
                  if(d.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator(),);
                  return Expanded(child: ListView.builder(
                      itemCount: d.data.length,
                      itemBuilder: (c,i){
                        return RestaurantCard(resturant: d.data[i], screen: AdminStoreCtgs(restID: d.data[i].id,),);
                      }));
                })
          ],
        ),
      ),
    );
  }
}
