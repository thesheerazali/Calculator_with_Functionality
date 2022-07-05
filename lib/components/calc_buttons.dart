import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    Key? key,
    required this.text,
    this.textcolor = const Color(0xFFB71C1C),
    this.buttoncolor = const Color(0xFF333333),
    this.textsize = 0.0,
    this.onPressed,
  }) : super(key: key);

  final String text;

  final Color textcolor;
  final Color buttoncolor;
  final double textsize;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 7,
          ),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: buttoncolor, borderRadius: BorderRadius.circular(20)),
            child: MaterialButton(
              onPressed: onPressed,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: textsize,
                  color: textcolor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
