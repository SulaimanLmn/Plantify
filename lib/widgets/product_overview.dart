import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/widgets/product_overview_item.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.productDetailWater,
          scale: 0.7,
        ),
        SizedBox(
          width: 10,
        ),
        ProductOverviewItem(
          contentAmount: "250ml",
          contentText: "WATER",
        ),
        SizedBox(
          width: 35,
        ),
        Image.asset(
          AppAssets.productDetailLight,
          scale: 0.7,
        ),
        SizedBox(
          width: 10,
        ),
        ProductOverviewItem(contentAmount: "35 - 40%", contentText: "LIGHT"),
        SizedBox(
          width: 35,
        ),
        Image.asset(
          AppAssets.productDetailFertilizer,
          scale: 0.7,
        ),
        SizedBox(
          width: 10,
        ),
        ProductOverviewItem(contentAmount: "250mg", contentText: "FERTILIZER")
      ],
    );
  }
}
