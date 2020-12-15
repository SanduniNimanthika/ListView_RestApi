import 'package:flutter/material.dart';
class noteDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Warning'),
      content: Text("delete"),
      actions: <Widget>[
        FlatButton(
          child: Text("yes"),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text("no"),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ],
    ) ;
  }
}
