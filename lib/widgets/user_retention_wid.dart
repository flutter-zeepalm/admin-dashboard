import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:ecommerce_store_screen/data/typography.dart';
import 'package:flutter/material.dart';

class UserRetentionWidget extends StatelessWidget {
  final IconData icon;
  final double value;
  final double rate;
  final Color ratecolour;
  final IconData rateicon;
  const UserRetentionWidget({
    Key? key,
    required this.icon,
    required this.value,
    required this.rate,
    required this.ratecolour,
    required this.rateicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 22, color: CustomColor.kwhite),
        const SizedBox(
          height: 8,
        ),
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: kBoldFontWeight,
            color: CustomColor.kwhite,
          ),
        ),
        // const SizedBox(
        //   height: 1,
        // ),
        Text(
          "Thousand",
          style: TextStyle(
            fontSize: 8,
            //fontWeight: kBoldFontWeight,
            color: CustomColor.kwhite.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$rate%",
              style: TextStyle(
                fontSize: 8,
                fontWeight: kBoldFontWeight,
                color: ratecolour,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(rateicon, size: 8, color: ratecolour),
          ],
        ),
      ],
    );
  }
}
