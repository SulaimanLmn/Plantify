import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Air Purifier",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset(AppAssets.pawIcon),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Row(
            children: [
              Image.asset(
                AppAssets.productDetailStar,
                scale: 0.7,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "4.8",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF0D986A),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
