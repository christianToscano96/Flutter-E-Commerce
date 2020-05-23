
import 'package:flutter/material.dart';

//pages
import 'package:ecommerce/pages/registrer_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E-commerce',
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
        hintColor: Colors.black12,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RegistrerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


