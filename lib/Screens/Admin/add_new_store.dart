import 'package:flutter/material.dart';
import 'package:modern_living/Data/DataProvider/resturant_data.dart';
import 'package:modern_living/Data/Models/resturant_model.dart';
import 'package:modern_living/Provider/resturant_provider.dart';
import 'package:modern_living/Screens/resturants.dart';
import 'package:modern_living/Widgets/full_width_button.dart';
import 'package:modern_living/Widgets/login_input_item.dart';
import 'package:modern_living/const.dart';

class AddNewStore extends StatefulWidget {
  @override
  _AddNewStoreState createState() => _AddNewStoreState();
}

TextEditingController _nameController;
TextEditingController _imageController ;
TextEditingController _timeFromController ;
TextEditingController _timeToController ;
TextEditingController _priceFromController;
TextEditingController _priceToController;
TextEditingController _cuisineTypeController ;


class _AddNewStoreState extends State<AddNewStore> {

  @override
  void initState() {
     _nameController =  TextEditingController();
     _imageController =  TextEditingController();
     _timeFromController =  TextEditingController();
     _timeToController =  TextEditingController();
     _priceFromController =  TextEditingController();
     _priceToController =  TextEditingController();
     _cuisineTypeController =  TextEditingController();

    super.initState();
  }

@override
  void dispose() {
    _nameController.dispose();
    _imageController.dispose();
    _timeFromController.dispose();
    _timeToController.dispose();
    _priceToController.dispose();
    _priceFromController.dispose();
    _cuisineTypeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserInputItem(
                title: 'Resturant name',
                controller: _nameController,
                inputType: TextInputType.text,
              ),
              UserInputItem(
                title: 'Image',
                controller: _imageController,
                inputType: TextInputType.url,
              ),
              Row(children: [
                Text('Time Range: ', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),),
                Expanded(child: UserInputItem(title: 'from',controller: _timeFromController,inputType: TextInputType.number,)),
                Expanded(child: UserInputItem(title: 'to',controller: _timeToController,inputType: TextInputType.number,)),
                Text(' Min', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),),
              ],),
              Row(children: [
                Text('Price Range: ', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),),
                Expanded(child: UserInputItem(title: 'from',controller: _priceFromController,inputType: TextInputType.number,)),
                Expanded(child: UserInputItem(title: 'to',controller: _priceToController,inputType: TextInputType.number,)),
                Text(' USD', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),),
              ],),
              Row(children: [
                Text('Cuisine Type: ', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: poppins,
                ),),
                Expanded(child: UserInputItem(
                  title: 'Cuisine',
                  controller: _cuisineTypeController,
                  inputType: TextInputType.text,
                )),

              ],),
              FullWidthButton(name: 'Add Store',action: (){
                RetrievedResturantData().addNewResturant(resturant: ResturantM(
                  name: _nameController.text,
                  img: _imageController.text,
                  rate: '0',
                  timeRange: '${_timeFromController.text} - ${_timeToController.text} min',
                  priceRange: '${_priceFromController.text} - ${_priceToController.text} USD',
                  cuisineType: _cuisineTypeController.text,
                ));
                Navigator.pop(context);
              },),
            ],
          ),
        ),
      )),
    );
  }
}
