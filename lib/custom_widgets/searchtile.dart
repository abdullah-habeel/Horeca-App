import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  final VoidCallback? onSearchTap;
  final VoidCallback? onVoiceTap;

  const SearchTile({super.key, this.onSearchTap, this.onVoiceTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.search, color: Colors.grey),
      title: const Text(
        'Search any Product',
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.mic, color: Colors.grey),
        onPressed: onVoiceTap,
      ),
      onTap: onSearchTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.grey, width: 1),
      ),
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
