import 'package:flutter/material.dart';

class GameExample extends StatefulWidget {
  const GameExample({super.key});

  @override
  State<GameExample> createState() => _GameExampleState();
}

class _GameExampleState extends State<GameExample> {
  bool _isDropped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Draggable<String>(
                data: 'true',
                feedback: SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: Center(
                    child: Image.asset('assets/images/recycle.png'),
                  ),
                ),
                childWhenDragging: Container(),
                child: SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: Center(
                    child: Image.asset('assets/images/recycle.png'),
                  ),
                ),
              ),
              DragTarget<String>(
                builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                    ) {
                  return SizedBox(
                    height: 120.0,
                    width: 120.0,
                    child: Center(
                      child: Image.asset(_isDropped
                          ? 'assets/images/protect.png'
                          : 'assets/images/smoke.png'),
                    ),
                  );
                },
                onWillAccept: (data) {
                  return data == 'true';
                },
                onAccept: (data) {
                  setState(() {
                    _isDropped = true;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('True!'),
                    ),
                  );
                },
                onLeave: (data) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('False!'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
