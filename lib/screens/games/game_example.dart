import 'package:flutter/material.dart';

class GameExample extends StatefulWidget {
  const GameExample({super.key});

  @override
  State<GameExample> createState() => _GameExampleState();
}

class _GameExampleState extends State<GameExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<String>(
              // Data is the value this Draggable stores.
              data: 'red',
              feedback: SizedBox(
                height: 120.0,
                width: 120.0,
                child: Center(
                  child: Image.asset('assets/images/recycle.png'),
                ),
              ),
              child: SizedBox(
                height: 120.0,
                width: 120.0,
                child: Center(
                  child: Image.asset('assets/images/recycle.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
