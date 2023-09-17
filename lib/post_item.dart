import 'package:assignment_2/post_model.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {

  PostModel post;
  Function onUpdate;

  PostItem({super.key, required this.post, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16)
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              post.image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            post.details,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          IconButton(
            onPressed: () {
              post.isFav = !(post.isFav);
              onUpdate();
            },
            icon: Icon(
              Icons.favorite,
              color: post.isFav
              ? Colors.red
              : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
