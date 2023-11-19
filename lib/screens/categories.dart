import 'package:groccery_app/screens/cartPage.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:groccery_app/consts/cart.dart';
import 'package:groccery_app/consts/groceryItemTile.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CartPage();
          })),
          backgroundColor: Colors.black,
          child: const Icon(Icons.shopping_bag_outlined),
        ),
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 48),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'hello samwel',
              )),
          const SizedBox(
            height: 9,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text('Lets help you order fresh groceries..',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Fresh Items', style: TextStyle(fontSize: 18))),
          Expanded(
            child: Consumer<CartModel>(builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    pricePerUnit: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);

                      // Show a styled animated dialog to indicate that the item has been added to the cart
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // Create a controller for the animation
                          final controller = AnimationController(
                            duration: const Duration(
                                seconds: 1), // Set the animation duration
                            vsync: Navigator.of(context),
                          );

                          // Create a curved animation using the controller
                          final CurvedAnimation curvedAnimation =
                              CurvedAnimation(
                                  parent: controller, curve: Curves.easeIn);

                          // Play the animation
                          controller.forward();

                          // Create a Future.delayed to automatically close the dialog after 2 seconds
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.of(context).pop(true);
                          });

                          return AnimatedBuilder(
                            animation: curvedAnimation,
                            builder: (context, child) {
                              return Opacity(
                                opacity: curvedAnimation.value,
                                child: AlertDialog(
                                  title: const Text(
                                    'Item Added to Cart',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  content: Text(
                                    '${value.shopItems[index][0]} successfuly added!!.',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(20),
                                  actionsPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              );
            }),
          )
        ])));
  }
}
