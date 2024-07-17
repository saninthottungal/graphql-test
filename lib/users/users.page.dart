import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 93, 81),
        title: Text("Users"),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("data"),
                subtitle: Text("sub"),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 5);
          },
          itemCount: 10),
    );
  }
}
