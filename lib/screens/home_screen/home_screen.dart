import 'package:flutter/material.dart';

import 'components/calculation_text.dart';
import 'components/calculator_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  List<Widget> get row1 => const [
        CalculatorButton(
          text: 'C',
          textColor: Color(0xFFB94D2B),
          fontSize: 28,
        ),
        CalculatorButton(
          text: '+/\u2212',
          fontSize: 22,
          textColor: Color(0xFFB94D2B),
        ),
        CalculatorButton(text: '%', fontSize: 28,textColor: Color(0xFFB94D2B),),
        CalculatorButton(
          text: '\u00F7',
          fontSize: 28,
          fontWeight: FontWeight.normal,textColor: Color(0xFFB94D2B),
        ),
      ];

  List<Widget> get row2 => [
        for (final i in ['1', '2', '3'])
          CalculatorButton(
            text: i,
            shape: Shape.circle,
            fontSize: 28,
          ),
        const CalculatorButton(
          text: '\u00D7',
          fontSize: 28,
          fontWeight: FontWeight.normal,
          textColor: Color(0xFFB94D2B),
        ),
      ];

  List<Widget> get row3 => [
        for (final i in ['4', '5', '6'])
          CalculatorButton(
            text: i,
            shape: Shape.circle,
            fontSize: 28,
          ),
        const CalculatorButton(
          text: '\u2212',
          fontSize: 28,
          fontWeight: FontWeight.normal,
          textColor: Color(0xFFB94D2B),
        ),
      ];

  List<Widget> get row4 => [
        for (final i in ['7', '8', '9'])
          CalculatorButton(
            text: i,
            shape: Shape.circle,
            fontSize: 28,
          ),
        const CalculatorButton(
          text: '+',
          fontSize: 28,
          fontWeight: FontWeight.normal,
          textColor: Color(0xFFB94D2B),
        ),
      ];

  List<Widget> get row5 => const [
        CalculatorButton(
          text: '0',
          width: 156,
          shape: Shape.stadium,
          fontSize: 28,
        ),
        CalculatorButton(
          text: '.',
          fontSize: 28,
          fontWeight: FontWeight.normal,
        ),
        CalculatorButton(
          text: '=',
          fontSize: 28,
          fontWeight: FontWeight.normal,
          textColor: Color(0xFFB94D2B),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final rows = [row1, row2, row3, row4, row5];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: CalculationText(),
          ),
          const Spacer(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(height: 20),
            itemCount: rows.length,
            itemBuilder: (_, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: rows[index],
            ),
          ),
          const SizedBox(height: 56),
        ],
      ),
    );
  }
}
