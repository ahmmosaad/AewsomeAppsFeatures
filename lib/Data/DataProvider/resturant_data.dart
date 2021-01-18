

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modern_living/Data/Models/ctg_model.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Data/Models/resturant_model.dart';

class RetrievedResturantData{

  FirebaseFirestore _db = FirebaseFirestore.instance;


  Future<QuerySnapshot> loadRestaurants(){
    try{
      return _db.collection("Restaurants").get();
    }
    catch(e){
      print(e.toString() + 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    }
  }

  Future<QuerySnapshot> loadCtg(String restID){
    try{
      return _db.collection("Restaurants").doc(restID).collection('Category').get();
    }
    catch(e){
      print(e.toString() + 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    }
  }
  Future<QuerySnapshot> loadProducts(String restID, String ctgId){
    try{
      return _db.collection("Restaurants").doc(restID).collection('Category').doc(ctgId).collection('Products').get();
    }
    catch(e){
      print(e.toString() + 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    }
  }







  Future addNewResturant({ResturantM resturant}) async {
    try{
      await _db.collection("Restaurants").add(ResturantM().toJson(resturant));
    }catch (e){
      print(e.toString());
    }
  }
  Future addNewCtg({CategoryM category, restID}) async {
    try{
      await _db.collection("Restaurants").doc(restID).collection('Category').add(CategoryM().toJson(category));
    }catch (e){
      print(e.toString());
    }
  }
  Future addNewProduct({Product product,String restID,String ctgID }) async {
    try{
      await _db.collection("Restaurants").doc(restID).collection('Category').doc(ctgID).collection('Products').add(Product().toJson(product));
    }catch (e){
      print(e.toString());
    }
  }

}