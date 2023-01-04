import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/stack_image_item.dart';
import 'data/image_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var index = 0;
  final List<Widget> items = imageItems
      .map(
        (item) => StackImageItem(item: item),
      )
      .toList();

  flSwitcher() {
    setState(() {
      if (items.length - 1 != index) {
        index++;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => flSwitcher(),
        child: const Icon(Icons.chevron_right, color: Colors.grey),
      ),
      appBar: AppBar(
        title: Text(imageItems[index].title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: AnimatedSwitcher(
        duration: const Duration(
          milliseconds: 1000,
        ),
        child: items[index],
      ),
    );
  }
}
