import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/gapbox.dart';

class OrderHistoryTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String item;
  final String price;
  final String statusText;
  final String statusValue;
  final Color statusColor;

  const OrderHistoryTile({
    super.key,
    required this.title,
    required this.item,
    required this.price,
    required this.subtitle,
    required this.statusText,
    required this.statusValue,
    this.statusColor = AppColors.greenlight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: CustomText(
              text: title,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            trailing: CustomText(text: subtitle),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: item, fontSize: 16),
                CustomText(text: price, fontSize: 16),
              ],
            ),
          ),

          const Divider(color: Colors.grey, thickness: 1),
          GapBox(5),

          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 5, backgroundColor: statusColor),
                const SizedBox(width: 8),
                CustomText(text: statusText),
              ],
            ),
            trailing: CustomText(text: statusValue),
          ),
        ],
      ),
    );
  }
}
