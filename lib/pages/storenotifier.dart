import 'dart:convert';

import 'package:apiwith_provider/pages/storemodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class APIManager extends ChangeNotifier {
  final List<StoreProduct> storeProduct = [];

  void fetchData() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = jsonDecode(jsonString);
      for (int i = 0; i < jsonMap.length; i++) {
        storeProduct.add(StoreProduct.fromJson(jsonMap[i]));
      }

      print("success");
      notifyListeners();
    } else {
      print("Failure");
    }
  }
}
