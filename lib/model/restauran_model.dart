import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:food_app_delivery_flutter/common/color_constant.dart';

class RestaurantModel{
  
  final Image img;
  final String resName;
  final String delivTime;
  final Color? txtColor;
  
  RestaurantModel({required this.img,required this.resName,required this.delivTime,this.txtColor});
}

List<RestaurantModel> resList = [
  RestaurantModel(img: Image.asset('assets/imgs/Vector.png'), resName: 'Lovy Food', delivTime: '10mn'),
  RestaurantModel(img: Image.asset('assets/imgs/Vector1.png'), resName: 'Cloudy Resto', delivTime: '20mn'),
  RestaurantModel(img: Image.asset('assets/imgs/Vector1.png'), resName: 'Circle Resto', delivTime: '5mn'),
  RestaurantModel(img: Image.asset('assets/imgs/Vector1.png'), resName: 'Haty Food', delivTime: '30mn'),
  RestaurantModel(img: Image.asset('assets/imgs/Vector1.png'), resName: 'Healthy Resto', delivTime: '13mn'),
  RestaurantModel(img: Image.asset('assets/imgs/Vector1.png'), resName: 'Recto Food', delivTime: '42mn'),
];

List<RestaurantModel> foodMenuList = [
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
  RestaurantModel(img: Image.asset('assets/imgs/Amok_khmer.png'), resName: 'Burger', delivTime: '\$10',txtColor: primaryColor),
];
