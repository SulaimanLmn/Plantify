import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/models/plant.dart';

class ProductProvider extends ChangeNotifier {
  List<Plant> plants = [
    Plant(
        name: "Peperomia",
        price: "400",
        productBgUrl: AppAssets.peperomiaBg,
        productImgUrl: AppAssets.peperomiaImg),
    Plant(
        name: "Watermelon",
        price: "350",
        productBgUrl: AppAssets.watermelonBg,
        productImgUrl: AppAssets.watermelonImg),
    Plant(
        name: "Croton Petra",
        price: "200",
        productBgUrl: AppAssets.crotonPetraBg,
        productImgUrl: AppAssets.crotonPetraImg),
    Plant(
        name: "Bird's Nest Fern",
        price: "160",
        productBgUrl: AppAssets.nestFernBg,
        productImgUrl: AppAssets.nestFernImg),
    Plant(
        name: "Cactus",
        price: "260",
        productBgUrl: AppAssets.cactusBg,
        productImgUrl: AppAssets.cactusImg),
    Plant(
        name: "Aloe Vera",
        price: "210",
        productBgUrl: AppAssets.aloeVeraBg,
        productImgUrl: AppAssets.aloeVeraImg),
  ];
}
