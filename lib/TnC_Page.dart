import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';





class TnC_Page extends StatefulWidget {
  //
  // String textasset = "assets/TnC.txt"; //path to text file asset
  // String TnC = rootBundle.loadString() as String;
  var TnC = 'qwertyuiop[';

  @override
  State<TnC_Page> createState() => _TnC_PageState();
}

class _TnC_PageState extends State<TnC_Page> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:  AppBar(
        title: const Text("TnC_Page"),
      ),
      body: SingleChildScrollView(
        child: Text(widget.TnC),
      ),


    );
  }
}
