import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangman/provider/game_screen_provider.dart';
import 'package:provider/provider.dart';

class Former extends StatefulWidget {
  const Former(
      {Key? key, required this.index, this.letter, required this.color})
      : super(key: key);

  final int index;
  final String? letter;
  final Color color;
  @override
  State<Former> createState() => _FormerState();
}

class _FormerState extends State<Former> {
  String answer = '1';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<GameScreenProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Container(
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadiusDirectional.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: provider.answerController[widget.index],
                  autofocus: true,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  ],
                  onChanged: (value) {}),
            ),
          ),
        );
      },
    );
  }
}
