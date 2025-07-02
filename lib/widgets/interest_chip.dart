import 'package:flutter/material.dart';

class InterestChip extends StatelessWidget {
  final String label;
  final bool selected;
  final Function(bool) onSelected;

  const InterestChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
      selectedColor: Colors.indigo[100],
      backgroundColor: Colors.grey[300],
      labelStyle: TextStyle(
        color: selected ? Colors.indigo : Colors.black87,
      ),
    );
  }
}
