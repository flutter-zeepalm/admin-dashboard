import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:ecommerce_store_screen/data/typography.dart';

import 'package:ecommerce_store_screen/model/progress_model.dart';

import 'package:flutter/material.dart';

class TopSelingButtons extends StatelessWidget {
  final TopSellingModel sellinglist;
  const TopSelingButtons({
    Key? key,
    required this.sellinglist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        children: [
          Text(
            sellinglist.count.toString(),
            style: TextStyle(
                fontSize: 8,
                color: CustomColor.kgrey,
                fontWeight: kBoldFontWeight),
          ),
          const SizedBox(
            width: 1,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                sellinglist.title,
                style: TextStyle(
                    fontSize: 8,
                    color: sellinglist.textcolor,
                    fontWeight: kBoldFontWeight),
              ))
        ],
      ),
    );
  }
}
