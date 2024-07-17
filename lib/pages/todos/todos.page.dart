import 'package:flutter/material.dart';
import 'package:graphql_test/fragments/todos_fragments.graphql.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({
    super.key,
    required this.todos,
  });

  final List<Fragment$todoInfo?> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final todo =
              todos[index] ?? Fragment$todoInfo(title: "", completed: false);
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(todo.title!),
              subtitle: Text(todo.completed! ? "completed" : "Pending"),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: todos.length,
      ),
    );
  }
}
