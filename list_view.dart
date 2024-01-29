import 'package:flutter/material.dart';
import 'package:project/model/list_model.dart';

class list extends StatelessWidget {
  const list({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :ListView.builder(
          itemCount: modelist.length,
            itemBuilder: (BuildContext context, int index){
            final modelData =modelist[index];
              return ListTile(
                leading : Icon(Icons.flatware_rounded),
                title: Text('$modelData.title'),
                subtitle: Text('\$ $modelData.price M '),
              );
            }
        ),
    );
  }
}
