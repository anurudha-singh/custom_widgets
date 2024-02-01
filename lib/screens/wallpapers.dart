import 'package:custom_widgets/widget/gradient_button.dart';
import 'package:flutter/material.dart';

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});

  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Wallpaper Screen'),
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientButton(
                title: 'Click to move Home Page',
                onPressed: () => Navigator.pushNamed(context, '/'))
          ],
        )),
      ),
    );
  }
}
