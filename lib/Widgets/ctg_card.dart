import 'package:flutter/material.dart';
import 'package:modern_living/Data/Models/ctg_model.dart';
import 'package:modern_living/Screens/ctg_products.dart';
import 'package:modern_living/const.dart';
class CtgCard extends StatelessWidget {
  const CtgCard({
    Key key,
    this.category,
    this.screen
  }) : super(key: key);

  final CategoryM category;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (c)=> screen));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: size.height * .2,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(category.image),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              category.name,
              style: TextStyle(
                  fontSize: 25,
                  color: whiteGreish,
                  fontWeight: FontWeight.bold,
                  fontFamily: poppins),
            ),
          ),
        ),
      ),
    );
  }
}
