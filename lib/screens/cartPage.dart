// Import necessary packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:groccery_app/consts/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('my Cart')),
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          value.cartItems[index][2],
                          height: 36,
                        ),
                        title: Text(value.cartItems[index][0]),
                        subtitle: Text('Ksh ' + value.cartItems[index][1]),
                        trailing: IconButton(
                          icon: const Icon(Icons.cancel),
                          onPressed: () => _showDeleteConfirmationDialog(
                            context,
                            index,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: ElevatedButton(
                onPressed: () {
                  _showTotalDialog(context, value.calculateTotal());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text('Total Price'),
                        // Display the total price as a string
                        Text(value.calculateTotal().toString()),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('pay now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                )),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  // Function to show delete confirmation dialog
  Future<void> _showDeleteConfirmationDialog(
      BuildContext context, int index) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Delete Item',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          content: const Text(
              'Are you sure you want to delete this item from your cart?'),
          contentPadding: const EdgeInsets.all(20),
          actionsPadding: const EdgeInsets.symmetric(horizontal: 10),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .removeItemFromCart(index);
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  // Function to show total dialog
  Future<void> _showTotalDialog(BuildContext context, double total) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Total Price'),
          content: Text('Total: Ksh $total'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Add logic for payment or any other action
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Pay Now'),
            ),
          ],
        );
      },
    );
  }
}
