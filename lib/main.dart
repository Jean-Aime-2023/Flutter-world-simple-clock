import 'package:flutter/material.dart';
import 'package:untitled/pages/choose_location.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context) => Loading(),
      '/home':(context)=>Home(),
      '/location':(context)=>ChooseLocation(),
    },
  ));
}
