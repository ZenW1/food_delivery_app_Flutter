import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:food_app_delivery_flutter/common/color_constant.dart';
class TypeModel {
  String? name;
  Color? color;
  bool isSelected;
  TypeModel({required this.name,this.color,required this.isSelected});
}

List<TypeModel> typeList = [
   TypeModel(name: 'Restaurant',color: primaryColor,isSelected: false),
   TypeModel(name: 'Menu',color: primaryColor,isSelected: false),
];

List<TypeModel> locationList = [
  TypeModel(name: '1 km',color: primaryColor,isSelected: false),
  TypeModel(name: '5 km',color: primaryColor,isSelected: false),
  TypeModel(name: '10 km',color: primaryColor,isSelected: false),
  TypeModel(name: '10 km',color: primaryColor,isSelected: false),
];

List<TypeModel> foodList = [
  TypeModel(name: 'Cake',color: primaryColor,isSelected: false),
  TypeModel(name: 'Burger',color: primaryColor,isSelected: false),
  TypeModel(name: 'Salad',color: primaryColor,isSelected: false),
  TypeModel(name: 'Pasta',color: primaryColor,isSelected: false),
  TypeModel(name: 'Desert',color: primaryColor,isSelected: false),
  TypeModel(name: 'Apettizer',color: primaryColor,isSelected: false),
  TypeModel(name: 'Cake',color: primaryColor,isSelected: false),
];