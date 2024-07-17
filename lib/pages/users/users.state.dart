import 'package:graphql_test/fragments/todos_fragments.graphql.dart';

class UserModel {
  final String name;
  final String email;
  List<Fragment$todoInfo?>? todos;

  UserModel({
    required this.name,
    required this.email,
    required this.todos,
  });
}
