import 'package:flutter/material.dart';
import 'package:hangman/provider/game_screen_provider.dart';
import 'package:hangman/screen/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ListenableProvider<GameScreenProvider>(create: (_) => GameScreenProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
