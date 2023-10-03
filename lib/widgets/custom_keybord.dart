import 'package:flutter/material.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;

  CustomKeyboard({required this.onKeyPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomKeyButton(label: 'Q', onPressed: () => onKeyPressed('Q')),
            CustomKeyButton(label: 'W', onPressed: () => onKeyPressed('W')),
            CustomKeyButton(label: 'E', onPressed: () => onKeyPressed('E')),
            CustomKeyButton(label: 'R', onPressed: () => onKeyPressed('R')),
            CustomKeyButton(label: 'T', onPressed: () => onKeyPressed('T')),
            CustomKeyButton(label: 'Y', onPressed: () => onKeyPressed('Y')),
            CustomKeyButton(label: 'U', onPressed: () => onKeyPressed('U')),
            CustomKeyButton(label: 'I', onPressed: () => onKeyPressed('I')),
            CustomKeyButton(label: 'O', onPressed: () => onKeyPressed('O')),
            CustomKeyButton(label: 'P', onPressed: () => onKeyPressed('P')),
          ],
        ),
        Row(
          children: [
            CustomKeyButton(label: 'A', onPressed: () => onKeyPressed('A')),
            CustomKeyButton(label: 'S', onPressed: () => onKeyPressed('S')),
            CustomKeyButton(label: 'D', onPressed: () => onKeyPressed('D')),
            CustomKeyButton(label: 'F', onPressed: () => onKeyPressed('F')),
            CustomKeyButton(label: 'G', onPressed: () => onKeyPressed('G')),
            CustomKeyButton(label: 'H', onPressed: () => onKeyPressed('H')),
            CustomKeyButton(label: 'J', onPressed: () => onKeyPressed('J')),
            CustomKeyButton(label: 'K', onPressed: () => onKeyPressed('K')),
            CustomKeyButton(label: 'L', onPressed: () => onKeyPressed('L')),
          ],
        ),
        Row(
          children: [
            CustomKeyButton(label: 'Z', onPressed: () => onKeyPressed('Z')),
            CustomKeyButton(label: 'X', onPressed: () => onKeyPressed('X')),
            CustomKeyButton(label: 'C', onPressed: () => onKeyPressed('C')),
            CustomKeyButton(label: 'V', onPressed: () => onKeyPressed('V')),
            CustomKeyButton(label: 'B', onPressed: () => onKeyPressed('B')),
            CustomKeyButton(label: 'N', onPressed: () => onKeyPressed('N')),
            CustomKeyButton(label: 'M', onPressed: () => onKeyPressed('M')),
          ],
        ),
      ],
    );
  }
}

class CustomKeyButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  CustomKeyButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label, style: TextStyle(fontSize: 18.0)),
    );
  }
}
