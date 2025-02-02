import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/models/plant.dart';

class ProductProvider extends ChangeNotifier {
  List<Plant> plants = [
    Plant(
        id: 1,
        name: "Peperomia",
        price: 400,
        productBgUrl: AppAssets.peperomiaBg,
        productImgUrl: AppAssets.peperomiaImg),
    Plant(
        id: 2,
        name: "Watermelon",
        price: 350,
        productBgUrl: AppAssets.watermelonBg,
        productImgUrl: AppAssets.watermelonImg),
    Plant(
        id: 3,
        name: "Croton Petra",
        price: 200,
        productBgUrl: AppAssets.crotonPetraBg,
        productImgUrl: AppAssets.crotonPetraImg),
    Plant(
        id: 4,
        name: "Bird's Nest Fern",
        price: 160,
        productBgUrl: AppAssets.nestFernBg,
        productImgUrl: AppAssets.nestFernImg),
    Plant(
        id: 5,
        name: "Cactus",
        price: 260,
        productBgUrl: AppAssets.cactusBg,
        productImgUrl: AppAssets.cactusImg),
    Plant(
        id: 6,
        name: "Aloe Vera",
        price: 210,
        productBgUrl: AppAssets.aloeVeraBg,
        productImgUrl: AppAssets.aloeVeraImg),
  ];
}
