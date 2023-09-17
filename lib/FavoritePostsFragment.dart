import 'package:assignment_2/post_item.dart';
import 'package:assignment_2/post_model.dart';
import 'package:assignment_2/posts_data.dart';
import 'package:flutter/material.dart';

class FavoritePostFragment extends StatelessWidget {

  Function onUpdate;

  FavoritePostFragment({super.key, required this.onUpdate});

  @override
  Widget build(BuildContext context) {

    List<PostModel> favList = posts.where((element) => element.isFav).toList();

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) => PostItem(post: favList[index], onUpdate: onUpdate),
      separatorBuilder: (context, index) => const SizedBox(
        height: 16,
      ),
      itemCount: favList.length,
    );
  }
}
