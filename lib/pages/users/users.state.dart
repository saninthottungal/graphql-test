import 'package:graphql_test/fragments/albums_fragment.graphql.dart';
import 'package:graphql_test/fragments/posts_fragment.graphql.dart';
import 'package:graphql_test/fragments/todos_fragments.graphql.dart';

class UserModel {
  final String name;
  final String email;
  final List<Fragment$todoInfo?>? todos;
  final List<Fragment$albumInfo?>? albums;
  final List<Fragment$postsInfo?>? posts;

  UserModel({
    required this.name,
    required this.email,
    required this.todos,
    required this.albums,
    required this.posts,
  });
}
