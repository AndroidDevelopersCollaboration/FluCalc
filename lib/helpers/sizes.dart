import 'package:flutter/material.dart';

class GlobalSizes{
  static dynamic globalWidth(BuildContext context, double size){
    return MediaQuery.of(context).size.width*size;
  }
  static dynamic globalHeight(BuildContext context, double size){
    return MediaQuery.of(context).size.width*size;
  }
}