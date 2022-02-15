import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:rate_trip/constants/chips.dart';

class IssueItem extends StatelessWidget {
  IconData? icon;
  String? title;
  
  List<String?>values;

  IssueItem({this.icon, this.title, required this.values});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title!),
      children: [Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(

          children: chips(values)),
      )],
      leading: Icon(icon, color: Colors.black,),
      iconColor: Colors.black,
     textColor: Colors.red,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
