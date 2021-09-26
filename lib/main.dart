import 'package:apiwith_provider/pages/homepage.dart';
import 'package:apiwith_provider/pages/storenotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        child: HomePage(),
        create: (BuildContext context)=>APIManager(),
      ),

    );
  }
}
