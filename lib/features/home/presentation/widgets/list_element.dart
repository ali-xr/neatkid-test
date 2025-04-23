import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  const ListElement({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.blue,
      title: Text("List Item", style: TextStyle(fontSize: 18, color: Colors.white)),
      onTap: () {},
    );
  }
}
