import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/core/app_fonts.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/widgets/plant_detail_header.dart';
import 'package:plantify/widgets/product_overview.dart';
import 'package:plantify/widgets/star_widget.dart';

class ProductDetailPage extends StatelessWidget {
  final Plant plant;
  const ProductDetailPage({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.productDetailBg,
              scale: 0.8,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PlantDetailHeader(),
                  SizedBox(
                    height: 25,
                  ),
                  StarWidget(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    plant.name,
                    style: TextStyle(
                        fontSize: 40, fontFamily: AppFonts.philosopher),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "PRICE",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: AppFonts.poppins,
                      color: Color.fromARGB(136, 0, 33, 64),
                    ),
                  ),
                  Text(
                    "\$ ${plant.price}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "SIZE",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: AppFonts.poppins,
                      color: Color.fromARGB(136, 0, 33, 64),
                    ),
                  ),
                  Text(
                    "5\" h",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Image.asset(
                            AppAssets.productDetailCart,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Image.asset(
                            AppAssets.productDetailFavorite,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Overview",
                    style: TextStyle(
                        fontFamily: AppFonts.poppins,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProductOverview(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Plant Bio",
                    style:
                        TextStyle(fontFamily: AppFonts.poppins, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: AppFonts.philosopher,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            Positioned(
              left: 150,
              top: 120,
              child: Image.asset(
                plant.productImgUrl,
                scale: 2.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
