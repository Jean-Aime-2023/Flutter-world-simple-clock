import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    Response response = await get('https://jsonplaceholder.typicode.com/todos/1' as Uri);
    Map data = jsonDecode(response.body);
    log(data as String);
    log(data['title']);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('Initial function ran');
    getData();
    log('Hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}
