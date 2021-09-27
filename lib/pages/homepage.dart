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
      appBar: AppBar(),
      body: Container(
        child: Consumer<APIManager>(builder: (context, model, _temp) {
          if (model.storeProduct != null) {
            return (ListView.builder(
                itemCount: model.storeProduct.length,
                itemBuilder: (context, index) {
                  return (Container(
                    color: Colors.red,
                    height: 100,
                    child: (ListTile(
                      leading: Image.network(model.storeProduct[index].image),
                    )),
                  ));
                }));
          } else {
            return Center(
                child: (Container(child: CircularProgressIndicator())));
          }
        }),
      ),
    );
  }
}
