import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schnell/pages/intro_Page.dart';
import 'moduls/cart.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Cart(),
      builder: (context,child)  => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: introPage(),
    ) ,
    );
  }
}


