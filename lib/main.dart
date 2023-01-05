import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'other_anime_stuffs/fading_widgets.dart';
import 'other_anime_stuffs/page_transition/shared_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: const SharedScreen(),
        // home: const HomeScreen(),
        // home: const FadingWidgets(),

        theme: ThemeData.dark(),
      );
}
