import 'package:flutter/material.dart';

List<InputChip> chips(List<String?> values) {
  List<InputChip> chips = [];
  for (int i = 0; i < values.length; i++) {
    chips.add(InputChip(label: Text(values[i]!)));
  }

  return chips;
}
