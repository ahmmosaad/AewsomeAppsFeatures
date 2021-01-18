class Product {
  String name;
  int price;
  String desc;
  String weight;
  String cal;
  String image;
  int quantity;
  double rating;

  Product({this.rating,this.name, this.desc, this.cal, this.price, this.weight, this.image, this.quantity = 0});

  Product fromJson(Map<String, dynamic> json) {
    return Product(
      rating: (json['rating'] as num)?.toDouble(),
      name: json['name'] as String,
      desc: json['desc'] as String,
      cal: json['cal'] as String,
      price: json['price'] as int,
      weight: json['weight'] as String,
      image: json['image'] as String,
      quantity: json['quantity'] as int,
    );
  }

  Map<String, dynamic> toJson(Product product) => <String, dynamic>{
    'name': product.name,
    'price': product.price,
    'desc': product.desc,
    'weight': product.weight,
    'cal': product.cal,
    'image': product.image,
    'quantity': product.quantity,
    'rating': product.rating,
  };

}