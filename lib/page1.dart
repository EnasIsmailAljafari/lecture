import 'package:appnew/myprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider App'),
        ),
        body: Center(
          child: Text(Provider.of<MyProvider>(context).text),
        ));
  }
}
