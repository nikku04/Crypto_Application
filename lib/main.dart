import 'package:cryptoapp/bottom.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/barr.dart';
void main(){
  runApp(runn());
}

class runn extends StatelessWidget {
  const runn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottom(),
    );
  }
}
