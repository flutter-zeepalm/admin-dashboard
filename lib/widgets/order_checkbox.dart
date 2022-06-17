import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:flutter/material.dart';

class OrderColumn extends StatelessWidget {
  final String status;
  final String date;
  const OrderColumn({
    Key? key,
    required this.status,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 3,
        ),
        Text(
          status,
          style: TextStyle(fontSize: 8, color: CustomColor.kgrey),
        ),
        Text(date, style: TextStyle(fontSize: 10, color: CustomColor.kblack))
      ],
    );
  }
}
