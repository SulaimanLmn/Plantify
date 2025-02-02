import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/core/app_fonts.dart';
import 'package:plantify/models/cart_item.dart';
import 'package:plantify/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatefulWidget {
  final CartItem item;
  const CartItemWidget({
    required this.item,
    super.key,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    CartItem item = widget.item;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          item.plant.productImgUrl,
          scale: 12,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.plant.name,
              style: TextStyle(
                  fontFamily: AppFonts.philosopher,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (item.quantity > 1) {
                        context.read<CartProvider>().decrement(item);
                        return;
                      }
                      context.read<CartProvider>().deleteItem(item);
                    },
                    icon: Image.asset(
                      AppAssets.cartDecrementIcon,
                      scale: 0.8,
                    )),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "${item.quantity}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 3,
                ),
                IconButton(
                    onPressed: () {
                      context.read<CartProvider>().increment(item);
                    },
                    icon: Image.asset(
                      AppAssets.cartIncrementIcon,
                      scale: 0.8,
                    )),
                SizedBox(
                  width: 7,
                ),
                IconButton(
                    onPressed: () {
                      context.read<CartProvider>().deleteItem(item);
                    },
                    icon: Image.asset(
                      AppAssets.cartDeleteIcon,
                      scale: 0.8,
                    )),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.cartBookmarkIcon,
              scale: 0.8,
            )),
        SizedBox(
          width: 5,
        ),
        Text(
          "\$ ${item.plant.price * item.quantity}",
          style: TextStyle(fontFamily: AppFonts.poppins, fontSize: 15),
        )
      ],
    );
  }
}
