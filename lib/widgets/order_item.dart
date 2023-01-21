import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../providers/orders.dart' as ord;

class OrderItem extends StatelessWidget {
  final ord.OrderItem order;

  const OrderItem({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle:
                Text(DateFormat('dd MM yyy hh:mm').format(order.dateTime)),
            trailing: const IconButton(
              icon: Icon(
                Icons.expand_more,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
