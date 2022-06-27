import 'package:flutter/material.dart';
import 'package:my_calculator/components/digital_display.dart';

import '../components/button_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            _topIconContainer(),
            const SizedBox(
              height: 24,
            ),
            const DigitalDisplay(),
            const ButtonsContainer(),
          ],
        ),
      ),
    );
  }

  Widget _topIconContainer() {
    return Center(
      child: Container(
        height: 45,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey.shade600,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.sunny),
              Icon(Icons.star),
            ],
          ),
        ),
      ),
    );
  }
}
