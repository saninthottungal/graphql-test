import 'package:flutter/material.dart';
import 'package:graphql_test/fragments/albums_fragment.graphql.dart';
import 'package:graphql_test/fragments/todos_fragments.graphql.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({
    super.key,
    required this.albums,
  });

  final List<Fragment$albumInfo?> albums;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Albums"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final album = albums[index] ?? Fragment$albumInfo(title: "");
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(album.title!),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: albums.length,
      ),
    );
  }
}
