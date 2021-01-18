import 'package:modern_living/Data/Models/product_model.dart';


class CategoryM {
  String name;
  String image;
  String id;
  List<Product> products;
  CategoryM({this.name, this.image, this.products, this.id});


  CategoryM fromJson(Map<String, dynamic> json, String id ) {
    return CategoryM(
      id: id,
      name: json['name'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson(CategoryM instance) => <String, dynamic>{
    'name': instance.name,
    'image': instance.image,
  };

}
