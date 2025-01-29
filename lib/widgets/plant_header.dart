import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';

class PlantHeader extends StatelessWidget {
  const PlantHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.plantifyIcon),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "PLANTIFY",
          style: TextStyle(fontSize: 24, fontFamily: "Philosopher"),
        ),
        Spacer(),
        Transform.scale(
            scale: 1.3, child: Image.asset(AppAssets.notificationIcon)),
        SizedBox(
          width: 30,
        ),
        Transform.scale(scale: 1.3, child: Image.asset(AppAssets.widgetIcon))
      ],
    );
  }
}
