import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'storenotifier.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    context.read<APIManager>().fetchData();
    APIManager().fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<APIManager>(builder: (context,model,_temp){
          return Container();
        }),

    );
  }
}
