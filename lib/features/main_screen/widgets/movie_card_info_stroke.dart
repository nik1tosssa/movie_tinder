import 'package:flutter/material.dart';

class MovieCardInfoStroke extends StatefulWidget {
  final String name;
  final double fontSizeValue;
  final FontWeight fontWeightValue;

  const MovieCardInfoStroke({
    super.key,
    required this.name,
    required this.fontSizeValue,
    required this.fontWeightValue,
  });

  @override
  State<MovieCardInfoStroke> createState() => _MovieCardInfoStrokeState();
}

class _MovieCardInfoStrokeState extends State<MovieCardInfoStroke> {
  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            widget.name,
            style: TextStyle(
              fontSize: widget.fontSizeValue,
              color: Colors.white,
              fontWeight: widget.fontWeightValue,
            ),
          ),
        ],
      );
}
