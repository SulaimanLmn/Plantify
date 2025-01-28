import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
            itemBuilder: (context, index) {
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
                                  image: AssetImage(
                                      "assets/images/product_bg.png"))),
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
                                  Image.asset("assets/images/paw_icon.png")
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Peperomia",
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
                                    "\$400",
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
                                      icon: Image.asset(
                                          "assets/images/favorite_icon.png")),
                                  Transform.scale(
                                    scale: 0.8,
                                    child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: Image.asset(
                                            "assets/images/cart_icon.png")),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            "assets/images/product_img.png",
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
            itemCount: 5),
      ),
    );
  }
}
