import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:convert';


class CounterProvider extends ChangeNotifier{
var pe1,pe2,pe3,pe4;
var name,sym;
var pr2,pr3,pr4,pr1,pr5,pr6,pr7,pr8,pr9,pr10;

  CounterProvider(){
  Stream.periodic(Duration(seconds: 1)).listen((_) {
    Future<dynamic>.delayed(Duration(seconds: 1),(){
      return Coins();}
    );
  });
}

dynamic Coins()async{
  final info = await http.get(Uri.parse('https://api.coincap.io/v2/assets'));
  var api = jsonDecode(info.body.toString());
  pr1 = api["data"][0]["priceUsd"];
  pe1 = api["data"][0]["changePercent24Hr"];
  pr2 = api["data"][1]["priceUsd"];
  pe2 = api["data"][1]["changePercent24Hr"];
  pr3 = api["data"][2]["priceUsd"];
  pe3 = api["data"][2]["changePercent24Hr"];
  pr4 = api["data"][3]["priceUsd"];
  pe4 = api["data"][3]["changePercent24Hr"];
  pr5 = api["data"][5]["priceUsd"];
  pr6 = api["data"][8]["priceUsd"];
  pr7 = api["data"][9]["priceUsd"];
  pr8 = api["data"][13]["priceUsd"];
  pr9 = api["data"][14]["priceUsd"];
  pr10 = api["data"][85]["priceUsd"];
  name = api["data"][85]["id"];




  notifyListeners();
}
}