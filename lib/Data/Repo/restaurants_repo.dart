

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modern_living/Data/DataProvider/resturant_data.dart';
import 'package:modern_living/Data/Models/ctg_model.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Data/Models/resturant_model.dart';

class RestaurantsRep{

  RetrievedResturantData _resturantData = RetrievedResturantData();

  Future<List<ResturantM>> loadedRestaurants()async{
 QuerySnapshot _data =await _resturantData.loadRestaurants();
    return _data.docs.map((e) => ResturantM().fromJson(e.data(), e.id)).toList();
  }

  Future<List<CategoryM>> loadedCtgs(String restId)async{
    QuerySnapshot data =await _resturantData.loadCtg(restId);
    return data.docs.map((e) => CategoryM().fromJson(e.data(), e.id)).toList();
  }

  Future<List<Product>> loadedProducts(String restId, String ctgID)async{
    QuerySnapshot data =await _resturantData.loadProducts(restId,ctgID);
    return data.docs.map((e) => Product().fromJson(e.data())).toList();
  }



}