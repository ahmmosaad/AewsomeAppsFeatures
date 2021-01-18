import 'ctg_model.dart';

class ResturantM{
  String name;
  String id;
  String timeRange;
  String priceRange;
  String cuisineType;
  String rate;
  String img;
  List<CategoryM> ctgs;
  ResturantM({this.img, this.id, this.name,this.ctgs, this.cuisineType,this.priceRange,this.timeRange, this.rate});


  ResturantM fromJson(Map<String, dynamic> json,String iD) {


    return ResturantM(
      img: json['img'] as String,
      id: iD,
      name: json['name'] as String,
      cuisineType: json['cuisineType'] as String,
      priceRange: json['priceRange'] as String,
      timeRange: json['timeRange'] as String,
      rate: json['rate'] as String,
    );

  }

  Map<String, dynamic> toJson(ResturantM instance) =>
      <String, dynamic>{
        'name': instance.name,
        'timeRange': instance.timeRange,
        'priceRange': instance.priceRange,
        'cuisineType': instance.cuisineType,
        'rate': instance.rate,
        'img': instance.img,
      };

}