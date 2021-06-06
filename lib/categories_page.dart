import 'package:flutter/material.dart';
import 'fake_data.dart';
import 'category_item.dart';

class CategoriesPage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(12),
        children: FAKE_CATEGORIES.map((eachCaretory) => CategoryItem(category: eachCaretory)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3/2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15
        ));
  }

}