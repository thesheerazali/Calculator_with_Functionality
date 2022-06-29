import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    Key? key,
  required  this.text,
    this.textcolor = 0,
    this.textsize = 0.0,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final int textcolor;
  final double textsize;
  final Function()?  onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: MaterialButton(
              onPressed: onPressed,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: textsize,
                  color: Color(textcolor),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
