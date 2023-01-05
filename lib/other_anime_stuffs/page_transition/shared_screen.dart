import 'package:animations/animations.dart';

import 'first_screen.dart';
import 'second_screen.dart';
import 'package:flutter/material.dart';

class SharedScreen extends StatefulWidget {
  const SharedScreen({Key? key}) : super(key: key);

  @override
  State<SharedScreen> createState() => _SharedScreenState();
}

class _SharedScreenState extends State<SharedScreen> {
  var isFirstPage = true;

  switchPage() {
    setState(() {
      isFirstPage = !isFirstPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => switchPage(),
            child: const Text('Switch Page'),
          ),
        ],
      ),
      body: buildPage(),
    );
  }

  Widget buildPage() => PageTransitionSwitcher(
        duration: const Duration(milliseconds: 3000),
        transitionBuilder: (child, animation, secondaryAnimation) =>
            SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.horizontal,
          child: child,
        ),
        child: isFirstPage ? const FirstScreen() : const SecondScreen(),
      );
}
