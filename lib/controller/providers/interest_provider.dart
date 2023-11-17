import 'package:flutter/material.dart';

class InterestProvider extends ChangeNotifier{
  List<bool> isChecked=[false,false,false,false,false,false];


  void updateisChecked(bool value,int index){
    isChecked[index]= value;
    notifyListeners();
  }
}