enum WashType {
  Outer,
  Full,
  OuterClean,
}
enum PaymentMethod{
  Cash,
  Visa
}



class WashOrder {
  String washType;
  DateTime dateTime;
  String paymentMethod;
  String oId;
  User user;
}


class User{
  String name;
  String address;
  String phone;
  Car car;
  Package packageType;
}

class Car{
  String type;
  String brand;
  String color;
  String numbers;
  String charts;
}

class Package{
  int length;
  DateTime start;
  DateTime end;
  String payment;
  String type;
}