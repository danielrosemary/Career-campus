import 'package:flutter/material.dart';

class CareerCard extends StatelessWidget {
  final String title;
  final String category;
  final VoidCallback? onSave;

  const CareerCard({
    super.key,
    required this.title,
    required this.category,
    this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 3,
      child: ListTile(
        title: Text(title),
        subtitle: Text('Field: $category'),
        trailing: onSave != null
            ? IconButton(
                icon: const Icon(Icons.bookmark_add),
                onPressed: onSave,
              )
            : null,
      ),
    );
  }
}
