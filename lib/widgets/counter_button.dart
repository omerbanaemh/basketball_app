import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final String text;
  final void Function() fun;
  const CounterButton({super.key, required this.text, required this.fun});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: fun,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
