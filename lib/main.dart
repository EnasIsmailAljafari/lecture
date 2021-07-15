import 'dart:js';

import 'package:appnew/page1.dart';
import 'package:appnew/page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myprovider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MaterialApp(home: MyApp())));
}

class MyApp extends StatelessWidget {
  String text = '';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider App'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(Provider.of<MyProvider>(context).text),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<MyProvider>(context, listen: false)
                          .changeTextValue('salam');
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return Page1();
                      // }));
                    },
                    child: Text('Submit')),
                SizedBox(
                  height: 15,
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       // Navigator.of(context)
                //       //     .push(MaterialPageRoute(builder: (context) {
                //       //   text = 'salam';
                //       //   return Page2();
                //       // }));
                //       Provider.of<MyProvider>(context, listen: false).text =
                //           'salam';
                //     },
                //     child: Text('change value')),
              ],
            ),
          ),
        ));
  }
}
