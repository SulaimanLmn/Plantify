import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';

class PlantSearchBar extends StatelessWidget {
  const PlantSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Image.asset(AppAssets.searchIcon),
        suffixIcon: Image.asset(
          AppAssets.scanIcon,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Search",
        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        contentPadding: EdgeInsets.all(15),
      ),
    );
  }
}
