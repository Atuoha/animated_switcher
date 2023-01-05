import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'other_anime_stuffs/fading_widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: const FadingWidgets(),
        theme: ThemeData.dark(),
      );
}
