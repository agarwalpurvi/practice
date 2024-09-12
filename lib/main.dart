import 'package:flutter/material.dart';
import 'package:practice/views/search_view.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: SearchPage() ,
      );
  }
}