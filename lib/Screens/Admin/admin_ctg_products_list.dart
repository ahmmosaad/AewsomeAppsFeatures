import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Data/Repo/restaurants_repo.dart';
import 'package:modern_living/Screens/Admin/add_new_product.dart';
import 'package:modern_living/Widgets/ctg_product_card.dart';
import 'package:modern_living/Widgets/resturant_card.dart';
import 'package:modern_living/const.dart';


class AdminCtgProduct extends StatelessWidget {
  final String restID, ctgID;

  AdminCtgProduct({this.restID, this.ctgID});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ctgs Products'),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=> AddNewProduct(
              restID: restID,
              ctgId: ctgID,
            )));
          }),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<Product>>(
                future: RestaurantsRep().loadedProducts(restID, ctgID),
                builder: (c,d){
                  if(d.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator(),);
                  if(d.hasError) return Center(child: Text(d.error.toString()),);
                  return Expanded(child: ListView.builder(
                      itemCount: d.data.length,
                      itemBuilder: (c,i){
                        return CtgProductCard(product: d.data[i],);
                      }));
                })
          ],
        ),
      ),
    );
  }
}