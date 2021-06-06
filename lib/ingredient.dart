import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'food.dart';

class Ingredient extends StatelessWidget {
  Food food;

  Ingredient({this.food});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${food.name}",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:food.ingredients != null?
        Column(
          children: <Widget>[
            FadeInImage.assetNetwork(
                placeholder: 'assets/images/id-loading-1.gif',
                image: food.urlImage),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Ingredient of ${this.food.name}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: food.ingredients.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.blue,
                          child: Text('${index + 1}',style: TextStyle(fontSize: 18,color: Colors.black),),),
                        title: Text(
                          food.ingredients[index],
                          style: TextStyle(fontSize: 18),
                        ),
                      );
                    }))
          ],
        )
            :Text("No Ingredient Found",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
    );
  }
}
