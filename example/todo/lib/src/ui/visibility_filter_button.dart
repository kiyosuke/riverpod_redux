import 'package:flutter/material.dart';
import 'package:todo/src/redux/model/visibility_filter.dart';

class VisibilityFilterButton extends StatelessWidget {
  final VisibilityFilter value;
  final void Function(VisibilityFilter filter) onItemSelected;

  const VisibilityFilterButton({
    super.key,
    required this.value,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<VisibilityFilter>(
      icon: const Icon(Icons.filter_list),
      onSelected: onItemSelected,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: VisibilityFilter.all,
          enabled: value != VisibilityFilter.all,
          child: const Text('All'),
        ),
        PopupMenuItem(
          value: VisibilityFilter.active,
          enabled: value != VisibilityFilter.active,
          child: const Text('Active'),
        ),
        PopupMenuItem(
          value: VisibilityFilter.completed,
          enabled: value != VisibilityFilter.completed,
          child: const Text('Completed'),
        ),
      ],
    );
  }
}
