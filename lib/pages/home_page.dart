import 'package:flutter/material.dart';
import 'package:plantify/widgets/plant_banner.dart';
import 'package:plantify/widgets/plant_header.dart';
import 'package:plantify/widgets/plant_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            children: [
              PlantHeader(),
              SizedBox(
                height: 25,
              ),
              PlantBanner(),
              SizedBox(
                height: 20,
              ),
              PlantSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
