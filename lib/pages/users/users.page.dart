import 'package:flutter/material.dart';
import 'package:graphql_test/pages/todos/todos.page.dart';
import 'package:graphql_test/pages/users/users.logic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersPage extends ConsumerWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 93, 81),
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: users.isEmpty
          ? const Center(
              child: Text("Loading..."),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              TodosPage(todos: users[index].todos!),
                        ),
                      );
                    },
                    title: Text(users[index].name),
                    subtitle: Text(users[index].email),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
              itemCount: users.length,
            ),
    );
  }
}
