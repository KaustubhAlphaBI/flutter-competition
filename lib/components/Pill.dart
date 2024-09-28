import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double padding;
  final VoidCallback? onTap; // Add an optional onTap callback

  const Pill({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.padding = 8.0,
    this.onTap, // Initialize the onTap callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Use GestureDetector for click detection
      onTap: onTap, // Call the onTap callback when the pill is tapped
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              BorderRadius.circular(20.0), // Adjust radius for pill shape
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
