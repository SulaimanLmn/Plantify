import 'package:flutter/material.dart';
import 'package:plantify/core/app_fonts.dart';
import 'package:plantify/models/cart_item.dart';
import 'package:plantify/providers/cart_provider.dart';
import 'package:plantify/widgets/cart_item_widget.dart';
import 'package:plantify/widgets/plant_detail_header.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartItem> items = context.watch<CartProvider>().items;
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlantDetailHeader(),
            SizedBox(
              height: 40,
            ),
            Text(
              "Your Cart",
              style: TextStyle(
                  color: Color(0xFF0D986A),
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                  fontFamily: AppFonts.poppins),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 450,
              child: items.isEmpty
                  ? Center(
                      child: Text(
                      "Empty Cart",
                      style: TextStyle(fontSize: 20),
                    ))
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return CartItemWidget(
                          item: items[index],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 15,
                          ),
                      itemCount: items.length),
            ),
            if (items.isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontFamily: AppFonts.poppins, fontSize: 35),
                    ),
                    Spacer(),
                    Text(
                      "\$${context.watch<CartProvider>().getTotalPrice()}",
                      style:
                          TextStyle(fontFamily: AppFonts.poppins, fontSize: 35),
                    )
                  ],
                ),
              )
          ],
        ),
      )),
    );
  }
}
