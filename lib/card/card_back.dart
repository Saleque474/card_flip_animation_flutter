import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_card_flip_animation/main.dart';

class CardBack extends StatelessWidget {
  const CardBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Color(0xFF54A7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              spreadRadius: 2,
            )
          ],
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment(0, 0),
      child: Text(
        "Back Front",
        style: textStyle,
      ),
    );
  }
}
