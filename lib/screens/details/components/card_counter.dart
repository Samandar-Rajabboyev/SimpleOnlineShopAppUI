import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);

  @override
  State<CardCounter> createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  num numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required Function() press}) {
    return SizedBox(
      width: 40,
      height: 30,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
