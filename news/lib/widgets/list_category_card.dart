import 'package:flutter/material.dart';
import 'package:news/models/categoryModel.dart';
import 'package:news/widgets/category_card_widget.dart';

class ListCategoryCard extends StatelessWidget {
  const ListCategoryCard({super.key});
  final List<Categorymodel> categories = const [
    Categorymodel(image: "assets/technology.jpeg", name: "Technology"),
    Categorymodel(image: "assets/entertaiment.avif", name: "Entertainment"),
    Categorymodel(image: "assets/bu.jpg", name: "Business"),
    Categorymodel(image: "assets/health.avif", name: "Health"),
    Categorymodel(image: "assets/science.avif", name: "Science"),
    Categorymodel(image: "assets/sports.avif", name: "Sports"),
    Categorymodel(image: "assets/general.avif", name: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCardWidget(
            category: categories[index],
          );
        },
      ),
    );
  }
}
