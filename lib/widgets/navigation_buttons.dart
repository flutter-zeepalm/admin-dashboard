import 'package:flutter/material.dart';

class NavigationBarContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Color selectcol;
  const NavigationBarContainer({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.selectcol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        width: 170,
        color: Colors.transparent,
        child: Center(
            child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 14,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(color: color, fontSize: 14),
            ),
            const Spacer(),
            Container(
              height: 50,
              width: 10,
              color: selectcol,
            )
          ],
        )),
      ),
    );
  }
}
