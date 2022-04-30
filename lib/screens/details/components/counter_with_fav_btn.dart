import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(color: Color(0xffff6464), shape: BoxShape.circle),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}
