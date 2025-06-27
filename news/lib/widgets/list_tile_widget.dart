import 'package:flutter/material.dart';
import 'package:news/services/newsService.dart';
import 'package:news/widgets/tile_widget.dart';
import 'package:news/models/NewsModel.dart';

class ListTileWidget extends StatelessWidget {
   ListTileWidget({super.key,required this.articles});

  List<Newsmodel> articles = [];

  @override
  Widget build(BuildContext context) {
    return 
         SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TileWidget(
                  newsmodel: articles[index],
                ),
              );
            },
          ));
  }
}
