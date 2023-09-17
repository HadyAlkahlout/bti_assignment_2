import 'package:assignment_2/post_item.dart';
import 'package:assignment_2/posts_data.dart';
import 'package:flutter/material.dart';

class AllPostFragment extends StatelessWidget {

  Function onUpdate;

  AllPostFragment({super.key, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) => PostItem(post: posts[index], onUpdate: onUpdate),
      separatorBuilder: (context, index) => const SizedBox(
        height: 16,
      ),
      itemCount: posts.length,
    );
  }
}
