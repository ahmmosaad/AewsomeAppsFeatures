import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/ctg_model.dart';
import 'package:modern_living/Data/Repo/restaurants_repo.dart';
import 'package:modern_living/Screens/Admin/add_new_ctg.dart';
import 'package:modern_living/Screens/Admin/admin_ctg_products_list.dart';
import 'package:modern_living/Widgets/ctg_card.dart';
import '../../const.dart';


class AdminStoreCtgs extends StatelessWidget {
  final String restID;

  AdminStoreCtgs({this.restID});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN Store Ctg'),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=> AddNewCtg(restId: restID,)));
          }),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           FutureBuilder<List<CategoryM>>(
               future: RestaurantsRep().loadedCtgs(restID),
               builder: (c,d){
             if(d.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator(),);
             if(d.hasError) return Center(child: Text(d.error.toString()),);
             print(d.error.toString() + 'errrerejbkjrbkjdbv');
             return  Expanded(child: ListView.builder(
                 itemCount: d.data.length,
                 itemBuilder: (c,i){
                   return CtgCard(category: d.data[i],screen: AdminCtgProduct(
                     restID: restID,
                     ctgID: d.data[i].id,
                   ),);
                 }));
           })
          ],
        ),
      ),
    );
  }
}