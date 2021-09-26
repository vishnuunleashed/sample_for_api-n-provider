import 'dart:convert';

import 'package:apiwith_provider/pages/storemodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


class APIManager extends ChangeNotifier{
  var storeProduct;

  Future<StoreProduct> fetchData() async{

    var response =  await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode == 200){
      var jsonString = response.body;
      var jsonMap = jsonDecode(jsonString);
      storeProduct = StoreProduct.fromJson(jsonMap[1]) ;

      print("success");
    }else{
      print("Failure");
    }
    return storeProduct;
  }
}