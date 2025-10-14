import 'package:final_project/custom_widgets/order_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_color.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            OrderHistoryTile(
              title: 'Order ID',
              subtitle: '#1379395',
              item: 'item 2',
              price: '\$25.99',
              statusText: 'Delivered',
              statusValue: '\$25.99',
              statusColor: AppColors.greendark,
            ),
            OrderHistoryTile(
              title: 'Order ID',
              subtitle: '#1379395',
              item: 'item 2',
              price: '\$25.99',
              statusText: 'In Progress',
              statusValue: '\$25.99',
              statusColor: AppColors.greenlight,
            ),
            OrderHistoryTile(
              title: 'Order ID',
              subtitle: '#1379395',
              item: 'item 2',
              price: '\$25.99',
              statusText: 'Delivered',
              statusValue: '\$25.99',
              statusColor: AppColors.greendark,
            ),
            OrderHistoryTile(
              title: 'Order ID',
              subtitle: '#1379395',
              item: 'item 2',
              price: '\$25.99',
              statusText: 'in Progress',
              statusValue: '\$25.99',
              statusColor: AppColors.greenlight,
            ),
            OrderHistoryTile(
              title: 'Order ID',
              subtitle: '#1379395',
              item: 'item 2',
              price: '\$25.99',
              statusText: 'Delivered',
              statusValue: '\$25.99',
              statusColor: AppColors.greenlight,
            ),
          ],
        ),
      ),
    );
  }
}
