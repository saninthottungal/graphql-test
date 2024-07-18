import 'package:flutter/material.dart';
import 'package:graphql_test/fragments/albums_fragment.graphql.dart';
import 'package:graphql_test/fragments/posts_fragment.graphql.dart';
import 'package:graphql_test/fragments/todos_fragments.graphql.dart';
import 'package:graphql_test/pages/albums/album.page.dart';
import 'package:graphql_test/pages/posts/post.page.dart';
import 'package:graphql_test/pages/todos/todos.page.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({
    super.key,
    required this.albums,
    required this.todos,
    required this.posts,
  });

  final List<Fragment$albumInfo?> albums;
  final List<Fragment$todoInfo?> todos;
  final List<Fragment$postsInfo?> posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: List.generate(
            3,
            (index) => Card(
                  child: ListTile(
                    onTap: () {
                      final page = index == 0
                          ? TodosPage(todos: todos)
                          : index == 1
                              ? AlbumPage(albums: albums)
                              : PostPage(
                                  posts: posts,
                                );
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => page),
                      );
                    },
                    title: Text(
                      titles[index],
                    ),
                  ),
                )),
      ),
    );
  }
}

const List<String> titles = [
  "Todos",
  "Albums",
  "Posts",
];
