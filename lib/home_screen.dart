import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool flag = true;

  flSwitcher() {
    setState(() {
      flag = !flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => flSwitcher(),
        child: Icon(flag ? Icons.chevron_right : Icons.chevron_left),
      ),
      appBar: AppBar(
        title: const Text('Animation Switcher'),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 1000,
          ),
          child: flag
              ? Container(
                  key: const ValueKey('1'),
                  height: 300,
                  width: 300,
                  color: Colors.indigo,
                )
              : Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  key: const ValueKey('2'),
                  height: 300,
                  width: 300,
                ),
        ),
      ),
    );
  }
}
