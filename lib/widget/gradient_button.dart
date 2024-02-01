import 'package:custom_widgets/widget/palete.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientButton extends StatelessWidget {
  String title;
  final VoidCallback onPressed;
  GradientButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            ColorGradients.gradient1,
            ColorGradients.gradient2,
            ColorGradients.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
