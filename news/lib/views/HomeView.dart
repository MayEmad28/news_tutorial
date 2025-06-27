import 'package:flutter/material.dart';
import 'package:news/widgets/list_category_card.dart';
import 'package:news/widgets/list_tile_widget.dart';
import 'package:news/widgets/news_listview_builder.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListCategoryCard(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListviewBuilder(category: 'general',)
          ],
        ),
      ),
    );
  }
}
