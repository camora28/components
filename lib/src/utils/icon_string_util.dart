import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'card': Icons.card_membership,
  'animation': Icons.play_circle_filled,
  'input': Icons.input,
  'tune': Icons.tune,
  'list': Icons.list
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.blue);
}
