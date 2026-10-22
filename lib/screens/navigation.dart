import 'package:flutter/material.dart';

import '../data/demo_data.dart';

// Форма заявки будет добавлена отдельным этапом.
void openBrief(BuildContext context, DemoData data, {String? serviceTitle}) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Форма заявки пока в разработке.')),
  );
}
