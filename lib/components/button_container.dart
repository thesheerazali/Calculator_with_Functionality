import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'calc_buttons.dart';

class DisplayWithButtonsContainer extends StatefulWidget {
  const DisplayWithButtonsContainer({Key? key}) : super(key: key);

  @override
  State<DisplayWithButtonsContainer> createState() => _ButtonsContainerState();
}

class _ButtonsContainerState extends State<DisplayWithButtonsContainer> {
  String displayValue = '';
  String actualExpression = '0';
  // creating an instance of parser for parsing (translating) the expression
  Parser p = Parser();
  // using `late` keyword to express the late initialization of value
  late Expression parsedExpression;

  void _updateExpressionByAddingValue(String value, {String? valueToShow}) {
    setState(() {
      if (valueToShow != null) {
        displayValue += valueToShow;
        actualExpression += value;
      } else {
        displayValue += value;
        actualExpression += value;
      }
    });
  }

  void evaluate() {
    print('Displayed Expression: ' + displayValue);
    print('Actual Expression: ' + actualExpression);
    parsedExpression = p.parse(actualExpression);
    setState(() {
      displayValue = actualExpression = parsedExpression
          .evaluate(EvaluationType.REAL, ContextModel())
          .toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 220, bottom: 50),
          child: Text(
            displayValue,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
        ),
        Container(
          height: 470,
          decoration: BoxDecoration(
            color: Colors.grey.shade600, //fromARGB(255, 26, 29, 36),
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
                  children: [
                    CalculatorButtons(
                      text: 'AC',
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        setState(() {
                          displayValue = '';
                          actualExpression = '';
                        });
                      },
                    ),
                    CalculatorButtons(
                      text: '+/-',
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        setState(() {
                          if (displayValue == '-') {
                            displayValue = displayValue.substring(1);
                            actualExpression = actualExpression.substring(1);
                          } else {
                            displayValue = '-' + displayValue;
                            actualExpression = '-' + actualExpression;
                          }
                        });
                      },
                    ),
                    CalculatorButtons(
                      text: '%',
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                       
                      },
                    ),
                    CalculatorButtons(
                      text: '÷',
                      // buttoncolor: Colors.black,
                      // textcolor: Colors.red,
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 30,
                      onPressed: () {
                        _updateExpressionByAddingValue('/', valueToShow: '÷');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButtons(
                      text: '7',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('7');
                      },
                    ),
                    CalculatorButtons(
                      text: '8',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('8');
                      },
                    ),
                    CalculatorButtons(
                      text: '9',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('9');
                      },
                    ),
                    CalculatorButtons(
                      text: 'x',
                      // buttoncolor: Colors.black,
                      // textcolor: Colors.red,
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 30,
                      onPressed: () {
                        _updateExpressionByAddingValue('*', valueToShow: '×');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButtons(
                      text: '4',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('4');
                      },
                    ),
                    CalculatorButtons(
                      text: '5',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('5');
                      },
                    ),
                    CalculatorButtons(
                      text: '6',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('6');
                      },
                    ),
                    CalculatorButtons(
                      text: '-',
                      // buttoncolor: Colors.black,
                      // textcolor: Colors.red,
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 30,
                      onPressed: () {
                        _updateExpressionByAddingValue('-');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButtons(
                      text: '1',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('1');
                      },
                    ),
                    CalculatorButtons(
                      text: '2',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('2');
                      },
                    ),
                    CalculatorButtons(
                      text: '3',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('3');
                      },
                    ),
                    CalculatorButtons(
                      text: '+',
                      // buttoncolor: Colors.black,
                      // textcolor: Colors.red,
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 30,
                      onPressed: () {
                        _updateExpressionByAddingValue('+');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButtons(
                      text: 'C',
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        setState(() {
                          displayValue = displayValue.substring(
                              0, displayValue.length - 1);
                          actualExpression = actualExpression.substring(
                              0, actualExpression.length - 1);
                        });
                      },
                    ),
                    CalculatorButtons(
                      text: '0',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('0');
                      },
                    ),
                    CalculatorButtons(
                      text: '.',
                      textcolor: Colors.white,
                      textsize: 25,
                      onPressed: () {
                        _updateExpressionByAddingValue('.');
                      },
                    ),
                    CalculatorButtons(
                      text: '=',
                      // buttoncolor: Colors.black,
                      // textcolor: Colors.red,
                      buttoncolor: Color(0xFFfea00c),
                      textcolor: Colors.white,
                      textsize: 30,
                      onPressed: () {
                        evaluate();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
