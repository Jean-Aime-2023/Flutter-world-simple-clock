import 'package:flutter/material.dart';
import 'dart:developer';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('Initial function ran');
  }

  @override
  Widget build(BuildContext context) {
    log('Build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed:(){
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
