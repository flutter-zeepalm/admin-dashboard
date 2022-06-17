import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  final bool value;
  const CheckBox({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.scale(
          scale: 0.7,
          child: Checkbox(
            checkColor: CustomColor.kpurplebar,
            value: value,
            onChanged: (bool? value) {},
          ),
        ),
      ],
    );
  }
}
