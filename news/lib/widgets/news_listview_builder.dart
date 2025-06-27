import 'package:flutter/material.dart';
import 'package:news/models/NewsModel.dart';
import 'package:news/services/newsService.dart';
import 'package:news/widgets/list_tile_widget.dart';

class NewsListviewBuilder extends StatefulWidget {
  final String category;

  const NewsListviewBuilder({super.key,required this.category});

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Newsservice().getNews(Category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Newsmodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListTileWidget(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text("Error.....Try Later !"));
          } else {
            return  const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isLoading
    //     ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isEmpty?const SliverToBoxAdapter(child: Text("Error.....Try Later !")): ListTileWidget(articles: articles);
  }
}
