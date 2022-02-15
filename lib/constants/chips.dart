import 'package:flutter/material.dart';

List<Chip> chips(List<String?> values) {
  List<Chip> chips = [];
  for (int i = 0; i < values.length; i++) {
    chips.add(Chip(label: Text(values[i]!)));
  }
  return chips;
}
