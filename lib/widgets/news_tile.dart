import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          articalModel.Image??'',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      Text(
        articalModel.Title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 2,
      ),
      Text(
        articalModel.SubTitle ?? '',
        maxLines: 2,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
      ),
    ]);
  }
}
