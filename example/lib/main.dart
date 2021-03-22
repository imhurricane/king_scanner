import 'dart:io';

import 'package:flutter/material.dart';
import 'package:king_scanner/king_scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('扫一扫'),
            onPressed: () async{
              if(Platform.isAndroid){
                var s = await KingScanner.scan;
                print('dart result: $s');
              }else if(Platform.isIOS){

              }
            },
          ),
        ),
      ),
    );
  }
}
