import 'package:graphql_test/client/client.dart';
import 'package:graphql_test/pages/users/users.graphql.dart';
import 'package:graphql_test/pages/users/users.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'users.logic.g.dart';

@riverpod
class UsersNotifier extends _$UsersNotifier {
  @override
  List<UserModel> build() {
    final client = ref.watch(gqClientProvider);
    client.query$getUsers().then((value) {
      List<UserModel> tempUsers = [];
      if (value.parsedData != null) {
        final users = value.parsedData!.users?.data;
        if (users != null) {
          for (var user in users) {
            if (user == null) {
              continue;
            } else {
              tempUsers.add(
                UserModel(
                  name: user.name ?? '',
                  email: user.email ?? '',
                  todos: user.todos!.data,
                  albums: user.albums?.data,
                  posts: user.posts?.data,
                ),
              );
            }
          }
        }
      }
      state = [...state, ...tempUsers];
    });

    return [];
  }
}
