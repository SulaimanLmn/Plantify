import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';

class PlantBanner extends StatelessWidget {
  const PlantBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.red,
      ),
      width: double.infinity,
      height: 200,
      child: Image.asset(
        AppAssets.banner,
        fit: BoxFit.fill,
      ),
    );
  }
}
