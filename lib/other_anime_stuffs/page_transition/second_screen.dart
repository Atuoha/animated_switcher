import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Second Page'),
              Text(
                'Quisque vel felis ullamcorper, commodo nulla sit amet, egestas est. In vitae lorem a mi cursus porta non eget tellus. Curabitur vel elit sollicitudin, suscipit magna non, ornare nunc. Nullam purus nunc, hendrerit non mattis at, mattis eu sem. Pellentesque vulputate sapien urna, ut porta enim fermentum in. Vivamus auctor erat odio, a iaculis nulla faucibus quis. Vestibulum facilisis dignissim justo, id vehicula libero pretium in. Suspendisse tristique nulla non pellentesque pretium. Morbi diam lacus, vehicula vel odio imperdiet, lobortis pellentesque orci. Etiam convallis ullamcorper nunc, pulvinar convallis lectus. Ut ultrices tortor et neque efficitur gravida.',
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
