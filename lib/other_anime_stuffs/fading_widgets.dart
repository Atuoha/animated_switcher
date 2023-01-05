import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class FadingWidgets extends StatefulWidget {
  const FadingWidgets({Key? key}) : super(key: key);

  @override
  State<FadingWidgets> createState() => _FadingWidgetsState();
}

class _FadingWidgetsState extends State<FadingWidgets> {
  bool isBtnVisible = true;

  triggerModal() {
    return showModal(
      configuration: const FadeScaleTransitionConfiguration(
        transitionDuration: Duration(milliseconds: 1000),
        reverseTransitionDuration: Duration(milliseconds: 2000),
      ),
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Modal'),
        content: const Text('This modal is just for testing'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }


  toggleBtn(){
    setState(() {
      isBtnVisible = !isBtnVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedOpacity(
        opacity: isBtnVisible ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: FloatingActionButton(
          onPressed: () => triggerModal(),
          child: const Icon(Icons.doorbell),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => toggleBtn(),
              child:  Text(isBtnVisible ?'Hide Fl Btn': 'Show Fl Btn'),
            ),
          ],
        ),
      ),
    );
  }
}
