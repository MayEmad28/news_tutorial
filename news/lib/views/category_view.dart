import 'package:flutter/material.dart';
import 'package:news/models/categoryModel.dart';
import 'package:news/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key,required this.category});
  final Categorymodel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListviewBuilder(
            category: category.name,
          )
        ],
      ),
    );
  }
}
