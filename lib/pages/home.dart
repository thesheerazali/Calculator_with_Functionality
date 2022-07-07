import 'package:flutter/material.dart';

import '../components/button_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            _topIconContainer(),
            const Spacer(),

            // const  DigitalDisplay(),
            const DisplayWithButtonsContainer(),
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
          color: Colors.grey.shade600, //fromARGB(255, 26, 29, 36),
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
