import 'package:flutter/material.dart';
import 'package:hangman/provider/game_screen_provider.dart';
import 'package:hangman/widgets/form.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameScreenProvider>(builder: (context, provider, child) {
      return Form(
        key: provider.formKeyTask,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    itemCount: provider.question.length,
                    itemBuilder: (context, index) {
                      return Former(
                        index: index,
                        color: provider.questionsColors[index],
                      );
                    },
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    provider.answerCheck(provider.currentQuestion);
                    print(provider.answer);
                    print(provider.currentQuestion);
                    print(provider.questionsColors.toString());
                  });
                },
                child: const Text('print'),
              )
            ],
          ),
        ),
      );
    });
  }
}
