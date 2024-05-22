import 'package:flutter/material.dart';
import 'package:neatewear/models/order.dart';

class OrderTile extends StatelessWidget {
  Order order;
  OrderTile({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // order image

          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(order.imagePath)),

          // order name
          Text(
            order.name,
            style: TextStyle(color: Colors.grey[600]),
          ),

          // order status + price
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // starting with the status at the left then the right will hold the price
            
                // order status
                Text(order.status),
            
                // order price
                Text(order.price)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
