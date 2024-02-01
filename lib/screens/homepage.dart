import 'package:custom_widgets/widget/gradient_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My HomePage'),
      ),
      body: Center(
          child: GradientButton(
              onPressed: () {
                print('button clicked');
              },
              title: 'Click to move wallpaper screen')),
    );
  }
}
