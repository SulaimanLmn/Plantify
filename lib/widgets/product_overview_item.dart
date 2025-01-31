import 'package:flutter/material.dart';
import 'package:plantify/core/app_fonts.dart';

class ProductOverviewItem extends StatelessWidget {
  final String contentAmount;
  final String contentText;

  const ProductOverviewItem({
    super.key,
    required this.contentAmount,
    required this.contentText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          contentAmount,
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0D986A),
              fontWeight: FontWeight.w700),
        ),
        Text(
          contentText,
          style: TextStyle(
              fontSize: 12,
              fontFamily: AppFonts.poppins,
              color: Color.fromARGB(136, 0, 33, 64)),
        )
      ],
    );
  }
}
