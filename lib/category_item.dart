import 'package:flutter/material.dart';
import 'category.dart';
import 'food_page.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: (){
        print("tap to ${this.category.content}");
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=> FoodPage(category: this.category,)));
      },
      splashColor: Colors.purpleAccent,
      child: Container(
        decoration: BoxDecoration(
            color: this.category.color,
            gradient: LinearGradient(
                colors: [_color.withOpacity(0.1), _color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              this.category.content,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );

  }
}
