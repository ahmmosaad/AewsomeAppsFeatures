import 'package:flutter/material.dart';

import '../const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    this.openDrawer
  }) : super(key: key);
  final Function openDrawer;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      height: size.height * .1,
      width: size.width,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: openDrawer),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: size.height * .06,
                color: whiteGreish,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        color: green,
                        height: size.height * .06,
                        width: size.width * .2,
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}