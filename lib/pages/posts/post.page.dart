import 'package:flutter/material.dart';
import 'package:graphql_test/fragments/posts_fragment.graphql.dart';

class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
    required this.posts,
  });

  final List<Fragment$postsInfo?>? posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Posts"),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(posts?[index]?.title ?? ''),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: posts?.length ?? 10,
      ),
    );
  }
}
