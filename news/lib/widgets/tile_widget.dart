import 'package:flutter/material.dart';
import 'package:news/models/NewsModel.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key, required this.newsmodel});
  final Newsmodel newsmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       ClipRRect(
  borderRadius: BorderRadius.circular(6),
  child: newsmodel.image != null
      ? Image.network(
          newsmodel.image!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        )
      : Image.asset(
          'assets/default_image.webp', 
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
),

        Text(
          newsmodel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          newsmodel.describtion ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
