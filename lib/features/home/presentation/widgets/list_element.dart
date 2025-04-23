import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  const ListElement({super.key, this.bottom});
  final double? bottom;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: bottom??0),
    child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.blue,
      title: Text("List Item", style: TextStyle(fontSize: 18, color: Colors.white)),
      onTap: () {},
    ),
    );
  }
}
