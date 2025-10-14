import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String filterText;
  final VoidCallback? onSort;
  final VoidCallback? onFilter;

  const MyListTile({
    super.key,
    required this.title,
    this.filterText = 'Filter',
    this.onSort,
    this.onFilter,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.greendark,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton.icon(
            onPressed: onSort,
            icon: const Icon(Icons.sort, size: 18, color: AppColors.greendark),
            label: const Text(
              'Sort',
              style: TextStyle(color: AppColors.greendark, fontSize: 13),
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              minimumSize: const Size(0, 0),
            ),
          ),
          const SizedBox(width: 6),
          TextButton.icon(
            onPressed: onFilter,
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 18,
              color: AppColors.greendark,
            ),
            label: Text(
              filterText,
              style: const TextStyle(color: AppColors.greendark, fontSize: 13),
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              minimumSize: const Size(0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
