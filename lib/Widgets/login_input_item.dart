import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const.dart';

class UserInputItem extends StatefulWidget {


final String title;
final bool isPass;
final TextEditingController controller;
final TextInputType inputType;

const UserInputItem({
Key key,
  this.title,
  this.controller,
  this.inputType,
  this.isPass = false,
}) : super(key: key);

@override
_UserInputItemState createState() => _UserInputItemState();
}

bool isHidden = false;

class _UserInputItemState extends State<UserInputItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, left: 2),
      child: TextFormField(
        keyboardType: widget.inputType,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: black,
          fontFamily: poppins,
        ),
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.title,
            hintStyle: TextStyle(
                fontSize: 12,
                color: black,
                fontFamily: poppins),

            fillColor: faintBlue,
            filled: true,
            suffixIcon: widget.isPass ? IconButton(icon: Icon(
              Icons.remove_red_eye,
              color: isHidden ? Colors.black54 : Colors.blue,), onPressed: () {
              setState(() {
                isHidden = !isHidden;
              });
            }) : null,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25),
            )
        ),),
    );
  }
}
