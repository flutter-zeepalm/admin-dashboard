import 'package:ecommerce_store_screen/data/constants.dart';

import 'package:flutter/material.dart';

class Labelcontainer extends StatelessWidget {
  final String label;
  const Labelcontainer({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: CustomColor.kgrey,
              fontSize: 10,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.more_horiz,
            size: 10,
            color: CustomColor.kgrey,
          ),
        ],
      ),
    );
  }
}
