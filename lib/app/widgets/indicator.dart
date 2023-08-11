import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    required this.persen,
    this.size = 12,
    this.textColor = const Color(0xFF52656F),
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;
  final String persen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
                borderRadius: BorderRadius.circular(2),
                color: color,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Barlow-Medium',
                color: textColor,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Align(
          alignment: Alignment.centerRight, // Rata kanan
          child: Text(
            persen,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Barlow-Medium',
              color: textColor,
            ),
          ),
        ),
      ],
    );
  }
}
