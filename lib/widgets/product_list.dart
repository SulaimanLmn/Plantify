import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/pages/product_detail_page.dart';
import 'package:plantify/providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    super.key,
  });

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    List<Plant> plants = context.read<ProductProvider>().plants;
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
            itemBuilder: (context, index) {
              Plant plant = plants[index];
              return Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          height: 170,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  alignment: Alignment.centerLeft,
                                  fit: BoxFit.contain,
                                  image: AssetImage(plant.productBgUrl))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Air Purifier",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(AppAssets.pawIcon)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    plant.name,
                                    style: TextStyle(
                                        fontFamily: "Philosopher",
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$ ${plant.price}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon:
                                          Image.asset(AppAssets.favoriteIcon)),
                                  Transform.scale(
                                    scale: 0.8,
                                    child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailPage(
                                              plant: plant,
                                            ),
                                          ));
                                        },
                                        icon: Image.asset(AppAssets.cartIcon)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            plant.productImgUrl,
                            width: 120,
                            height: 145,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: plants.length),
      ),
    );
  }
}
