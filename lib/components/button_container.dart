import 'package:flutter/material.dart';

import 'calc_buttons.dart';

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 26, 29, 36),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                CalculatorButtons(
                    text: 'AC', textcolor: 0xFF1B5E20, textsize: 25, onPressed: (){},),
                CalculatorButtons(
                    text: '+/-', textcolor: 0xFF1B5E20, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '%', textcolor: 0xFF1B5E20, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '÷', textcolor: 0xFFB71C1C, textsize: 25,onPressed: (){},),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                CalculatorButtons(
                    text: '7', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '8', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '9', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: 'x', textcolor: 0xFFB71C1C, textsize: 25,onPressed: (){},),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                CalculatorButtons(
                    text: '4', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '5', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '7', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '-', textcolor: 0xFFB71C1C, textsize: 25,onPressed: (){},),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                CalculatorButtons(
                    text: '1', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '2', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '3', textcolor: 0xFFFFEBEE, textsize: 25,onPressed: (){},),
                CalculatorButtons(
                    text: '+', textcolor: 0xFFB71C1C, textsize: 25),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButtons(
                    text: '↶', textcolor: 0xFFFFEBEE, textsize: 25),
                CalculatorButtons(
                    text: '0', textcolor: 0xFFFFEBEE, textsize: 25),
                CalculatorButtons(
                    text: '.', textcolor: 0xFFFFEBEE, textsize: 25),
                CalculatorButtons(
                    text: '=', textcolor: 0xFFB71C1C, textsize: 25),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
