


import 'package:flutter/cupertino.dart';

import 'Data/Models/ctg_model.dart';
import 'Data/Models/product_model.dart';
import 'Data/Models/resturant_model.dart';

Color green = Color(0xff09B44d);
Color faintBlue = Color(0xffB0f1DD);
Color faintGreen = Color(0xffF8FDFA);
Color whiteGreish = Color(0xffF6F6F6);
Color black = Color(0xff262626);

List<String> images = [
 onboard1,
 onboard2,
 onboard3,
];
List<String> descs = [
 'Choose your favourite dish from the nearest resturant or cafe',
 'Taste fresh and delicious meal any time and any where',
 'We also deliver food and drinks from the nearest supermarkets ',
];



String poppins = 'PoppinsMedium';
String sanFransciso = 'SFNSDisplay';


String imageRoot = 'asset/images';
String logo = '$imageRoot/logo.png';
String back = '$imageRoot/back.jpg';
String profile = '$imageRoot/profile.jpg';
String onboard1 = '$imageRoot/onboard1.jpg';
String onboard2 = '$imageRoot/onboard2.jpg';
String onboard3 = '$imageRoot/onboard3.jpg';

String face = '$imageRoot/f.png';
String google = '$imageRoot/g.png';


String res1 = '$imageRoot/res1.jpg';
String res2 = '$imageRoot/res2.jpg';
String res3 = '$imageRoot/res3.jpg';

String ctg1 = '$imageRoot/fish.jpg';
String ctg2 = '$imageRoot/meat.jpg';
String ctg3 = '$imageRoot/salad.jpg';
String ctg4= '$imageRoot/side.jpg';

String s1 = '$imageRoot/s1.png';
String s2 = '$imageRoot/s2.png';
String s3 = '$imageRoot/s3.png';
String s4 = '$imageRoot/s4.png';

List<Product> products =[
 Product(name: "Oliva", image: s4,rating: 2.5,cal: "200 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. Mix of Gratness and chocalota old.', price: 40),
 Product(name: "Camilia", image: s2,rating: 4.0,cal: "100 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 15 ),
 Product(name: "Veronica", image: s3,rating: 3.8,cal: "500 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 23 ),
 Product(name: "Virginia", image: s4,rating: 5.0,cal: "70 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 20 ),
];

List<Product> productsOffers =[
 Product(name: "Oliva", image: onboard1,rating: 2.5,cal: "200 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. Mix of Gratness and chocalota old.', price: 40 ),
 Product(name: "Camilia", image: onboard1,rating: 4.0,cal: "100 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 15 ),
 Product(name: "Veronica", image: onboard1,rating: 3.8,cal: "500 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 23 ),
 Product(name: "Virginia", image: onboard1,rating: 5.0,cal: "70 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 20 ),
];

List<ResturantM> restData = [
 ResturantM(img:res1 ,ctgs: ctgs,  name: "COTRONELLO",cuisineType: 'Frensh Cuisine', priceRange: "20-30 USD", timeRange: '30-40 min', rate: '5' ),
 ResturantM(img:res2 ,ctgs: ctgs,name: "VERO VERO",cuisineType: 'German Cuisine', priceRange: "2-25 USD", timeRange: '20-45 min', rate: '4.5' ),
 ResturantM(img:res3 ,ctgs: ctgs,name: "MILK COFFE",cuisineType: 'English Cuisine', priceRange: "10-50 USD", timeRange: '30-60 min', rate: '4' ),
 ResturantM(img:res1 ,ctgs: ctgs,name: "COTRONELLO",cuisineType: 'Frensh Cuisine', priceRange: "20-30 USD", timeRange: '30-40 min', rate: '5' ),
];

List<CategoryM> ctgs = [
 CategoryM(name: 'Salad', image: ctg3, products:products),
 CategoryM(name: 'Meat', image: ctg2, products: products),
 CategoryM(name: 'Side', image: ctg4, products: products),
 CategoryM(name: 'Fish', image: ctg1, products: products),
];

List<Product> orders = [
 Product(name: "Veronica", image: s3,rating: 3.8,cal: "500 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 23,quantity: 2 ),
 Product(name: "Virginia", image: s4,rating: 5.0,cal: "70 cal", weight: "250 g", desc: 'Mix of Gratness and chocalota old. ', price: 20, quantity: 1 ),
];