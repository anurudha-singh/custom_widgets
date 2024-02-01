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
        title: Text('wallpaper Screen'),
      ),
      body: Container(child: Center(child: Text('At wallpaper Screen'))),
    );
  }
}
