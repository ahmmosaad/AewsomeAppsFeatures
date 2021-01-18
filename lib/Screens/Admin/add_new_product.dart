import 'package:flutter/material.dart';
import 'package:modern_living/Data/DataProvider/resturant_data.dart';
import 'package:modern_living/Data/Models/product_model.dart';
import 'package:modern_living/Widgets/full_width_button.dart';
import 'package:modern_living/Widgets/login_input_item.dart';

class AddNewProduct extends StatefulWidget {

  final String restID, ctgId;
  AddNewProduct({this.restID,this.ctgId});

  @override
  _AddNewProductState createState() => _AddNewProductState();
}

TextEditingController _nameController;
TextEditingController _imageController;
TextEditingController _descController ;
TextEditingController _weightController ;
TextEditingController _calController ;
TextEditingController _priceController ;
TextEditingController _rateController ;

class _AddNewProductState extends State<AddNewProduct> {
  @override
  void initState() {
     _nameController =  TextEditingController();
     _imageController =  TextEditingController();
     _descController =  TextEditingController();
     _weightController =  TextEditingController();
     _calController =  TextEditingController();
     _priceController =  TextEditingController();
     _rateController =  TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _weightController.dispose();
    _calController.dispose();
    _rateController.dispose();
    _imageController.dispose();
    _descController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                UserInputItem(title: 'Name', controller: _nameController,),
                UserInputItem(title: 'Image', controller: _imageController,),
                UserInputItem(title: 'Desc', controller: _descController,),
                UserInputItem(title: 'Weight', controller: _weightController,),
                UserInputItem(title: 'Cal', controller: _calController,),
                UserInputItem(title: 'Price', controller: _priceController,inputType: TextInputType.number,),
                UserInputItem(title: 'Rate', controller: _rateController,),
                FullWidthButton(name: 'Add Product', action: (){
                  RetrievedResturantData().addNewProduct(
                    product: Product(
                      name: _nameController.text,
                      image: _imageController.text,
                      rating: double.parse(_rateController.text),
                      cal: _calController.text,
                      weight: _weightController.text,
                      desc: _descController.text,
                      price: int.parse(_priceController.text),
                    ),
                     restID: widget.restID,
                    ctgID: widget.ctgId
                  );

                  Navigator.pop(context);
                }),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
