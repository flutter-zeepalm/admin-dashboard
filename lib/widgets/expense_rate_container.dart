import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:ecommerce_store_screen/data/typography.dart';

import 'package:flutter/material.dart';

class ExpenseRateContainer extends StatelessWidget {
  final String rate;
  final String week;
  final double initrate;
  final IconData rateiniticon;
  final Color iconcolor;

  const ExpenseRateContainer({
    Key? key,
    required this.rate,
    required this.week,
    required this.initrate,
    required this.rateiniticon,
    required this.iconcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 110,
          color: CustomColor.kdeepblue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                rate,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: kBoldFontWeight,
                  color: CustomColor.kwhite,
                ),
              ),
              Text(
                "USD",
                style: TextStyle(
                  fontSize: 8,
                  //fontWeight: kBoldFontWeight,
                  color: CustomColor.kwhite.withOpacity(0.7),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          week,
          style: TextStyle(
            fontSize: 10,
            //fontWeight: kBoldFontWeight,
            color: CustomColor.kwhite.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$initrate%",
              style: TextStyle(
                fontSize: 8,
                fontWeight: kBoldFontWeight,
                color: iconcolor,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(rateiniticon, size: 8, color: iconcolor),
          ],
        ),
      ],
    );
  }
}
