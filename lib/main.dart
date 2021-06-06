import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Original_Surfer',
      ),
      home: Scaffold(

       appBar: AppBar(
         leading: Icon(Icons.ac_unit),
         title: const Text("Food's Category",style: TextStyle(fontSize: 22,fontFamily: 'Original_Surfer'),),
         centerTitle: true,),
        body: Center(
          child: SafeArea(
            child: CategoriesPage(),
         ),
        ),
      ),
    );
  }
}