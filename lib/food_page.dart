
import 'package:flutter/material.dart';
import 'category.dart';
import 'fake_data.dart';
import 'food.dart';
import 'ingredient.dart';

class FoodPage extends StatelessWidget {
  Category category;
  FoodPage({this.category});
  @override
  Widget build(BuildContext context) {
    List<Food> foods =FAKE_FOOD.where((food) => category.id == food.categoryId).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.category.content}", style: TextStyle(fontSize: 22)),
      ),
      body: Center(
        child:foods.length>0?
        ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              Food food = foods[index];
              return InkWell(
                onTap: (){
                  print("tap to ${food.name}");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ingredient(food:food)));
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        clipBehavior: Clip.hardEdge,
                        child: FadeInImage.assetNetwork(
                            placeholder: 'assets/images/id-loading-1.gif',
                            image: food.urlImage),
                      ),
                    ),
                    Positioned(
                        top:25,left: 25,
                        child:  Container(
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: EdgeInsets.all(10),

                          child: Row(
                            children: <Widget>[
                              Icon(Icons.access_alarm,color: Colors.white, size: 25),
                              Text(
                                "${food.duration.inMinutes} minutes",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top:25,right: 25,
                        child:  Container(
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: EdgeInsets.all(10),

                          child: Row(
                            children: <Widget>[
                              Text(
                                "${food.name}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )),

                  ],
                ),
              );
            }):
        Text("No Food Found",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
