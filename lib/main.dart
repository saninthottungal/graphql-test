import 'package:flutter/material.dart';
import 'package:graphql_test/client/client.dart';
import 'package:graphql_test/main.graphql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, _) {
          final client = ref.watch(gqClientProvider);

          return ElevatedButton(
            onPressed: () async {
              final response = await client.query$getUser(
                Options$Query$getUser(
                  variables: Variables$Query$getUser(id: "5"),
                ),
              );

              print(response.parsedData?.user?.email);
            },
            child: const Text("Click here"),
          );
        }),
      ),
    );
  }
}
