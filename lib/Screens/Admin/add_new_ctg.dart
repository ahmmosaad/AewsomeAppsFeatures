import 'package:flutter/material.dart';
import 'package:modern_living/Data/DataProvider/resturant_data.dart';
import 'package:modern_living/Data/Models/ctg_model.dart';
import 'package:modern_living/Provider/resturant_provider.dart';
import 'package:modern_living/Widgets/full_width_button.dart';
import 'package:modern_living/Widgets/login_input_item.dart';

class AddNewCtg extends StatefulWidget {

final String restId;
  AddNewCtg({this.restId});

  @override
  _AddNewCtgState createState() => _AddNewCtgState();
}

TextEditingController _nameController;
TextEditingController _imageController;

class _AddNewCtgState extends State<AddNewCtg> {

  @override
  void initState() {
    _nameController =  TextEditingController();
     _imageController =  TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _imageController.dispose();
     super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserInputItem(
                  title: 'Name',
                  controller: _nameController,
                ),
                UserInputItem(
                  title: 'Image',
                  controller: _imageController,
                ),
                FullWidthButton(name: 'Add Ctg', action: (){
                  RetrievedResturantData().addNewCtg(
                    restID: widget.restId,
                    category: CategoryM(
                      image: _imageController.text,
                      name: _nameController.text,
                    ),
                  );
                  Navigator.pop(context);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
