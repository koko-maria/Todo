import 'package:flutter/material.dart';

class Elevated extends StatelessWidget {
  const Elevated(
      {super.key,
      required this.icons,
      required this.text,
      required this.width,
      required this.height,
      required this.backgroundColor, required this.textColor, required this.onPressed});
  final IconData? icons;
  final String text;
  final double width;
  final double height;
  final Color backgroundColor; final Color textColor; final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            backgroundColor: backgroundColor,
            minimumSize: Size(width, height)),
        onPressed: onPressed,
        icon: Icon(
          icons,
          color: Theme.of(context).colorScheme.background,
          size: 24,
        ),
        label: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
                fontSize: 17,
              ),
        ));
  }
}
