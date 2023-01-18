import 'package:cupertino_product_app/views/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(debugShowCheckedModeBanner: false,
      routes: {
      '/':(context)=>HomePage(),
      },
    );
  }
}
