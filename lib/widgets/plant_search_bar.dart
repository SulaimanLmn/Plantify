import 'package:flutter/material.dart';

class PlantSearchBar extends StatelessWidget {
  const PlantSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Image.asset("assets/images/search_icon.png"),
        suffixIcon: Image.asset(
          "assets/images/scan_icon.png",
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
