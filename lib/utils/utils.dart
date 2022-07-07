// class utils{
//  String displayValue = '';
//   String actualExpression = '0';
//   // creating an instance of parser for parsing (translating) the expression
//   Parser p = Parser();
//   // using `late` keyword to express the late initialization of value
//   late Expression parsedExpression;
//   void _updateExpressionByAddingValue(String value, {String? valueToShow}) {
//     setState(() {
//       if (valueToShow != null) {
//         displayValue += valueToShow;
//         actualExpression += value;
//       } else {
//         displayValue += value;
//         actualExpression += value;
//       }
//     });
//   }

//   void evaluate() {
//     print('Displayed Expression: ' + displayValue);
//     print('Actual Expression: ' + actualExpression);
//     parsedExpression = p.parse(actualExpression);
//     setState(() {
//       displayValue = actualExpression = parsedExpression
//           .evaluate(EvaluationType.REAL, ContextModel())
//           .toString();
//     });

// }