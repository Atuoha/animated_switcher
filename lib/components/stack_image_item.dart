import 'package:flutter/material.dart';

import '../model/image_item.dart';

class StackImageItem extends StatelessWidget {
  const StackImageItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final ImageItem item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: Key(item.title),
      children: [
        Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: NetworkImage(
                  item.imgUrl,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 30,
          left: 30,
          child: Center(
            child: Text(item.title),
          ),
        )
      ],
    );
  }
}
