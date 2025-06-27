import 'package:flutter/material.dart';
import 'package:news/models/categoryModel.dart';
import 'package:news/views/category_view.dart';

class CategoryCardWidget extends StatelessWidget {
  final Categorymodel category;
  const CategoryCardWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return CategoryView(category: category,);
       }));
      },
      child: Container(
        margin: const EdgeInsets.all(7),
        height: 85,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill)),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
