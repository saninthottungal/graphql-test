import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'client.g.dart';

@riverpod
GraphQLClient gqClient(GqClientRef ref) {
  final HttpLink link = HttpLink("https://graphqlzero.almansi.me/api");
  return GraphQLClient(link: link, cache: GraphQLCache());
}
