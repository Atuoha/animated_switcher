import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('First Page'),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget nibh nec ipsum iaculis semper eget vitae elit. Aliquam vehicula, velit consequat ornare gravida, sem metus facilisis ipsum, sit amet pretium orci dui ut nisi. Donec mauris odio, fringilla sit amet venenatis ut, scelerisque et diam. Morbi ultrices nulla et arcu vulputate, eu lobortis erat tincidunt. Proin tristique urna non arcu ultrices tincidunt. Phasellus feugiat, metus vitae fringilla fermentum, sapien enim pharetra odio, ut imperdiet lectus eros sit amet est. Pellentesque in fringilla sapien.',
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
