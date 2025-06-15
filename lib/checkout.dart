import 'package:flutter_ecommerce/themes/colors.dart';
import 'package:flutter/material.dart';

class CheckoutScreen
    extends
        StatefulWidget {
  const CheckoutScreen({
    super.key,
  });

  @override
  State<
    CheckoutScreen
  >
  createState() =>
      _CheckoutScreenState();
}

class _CheckoutScreenState
    extends
        State<
          CheckoutScreen
        > {
  List<
    Map<
      String,
      String
    >
  >
  cartItems = [
    {
      "label": "Product 1",
      "price": "1000",
      "quantity": "2",
      "imageUrl": "https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=600",
    },
    {
      "label": "Product 2",
      "price": "1000",
      "quantity": "2",
      "imageUrl": "https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=600",
    },
  ];
  int
  _calculateSubtotal() {
    return cartItems.fold(0, (
      total,
      item,
    ) {
      int
      price = int.parse(
        item['price']!,
      );
      int
      quantity = int.parse(
        item['quantity']!,
      );
      return total +
          (price *
              quantity);
    });
  }

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    int
    subtotal =
        _calculateSubtotal();
    int
    shipping =
        cartItems.isEmpty
        ? 0
        : 100;
    int
    total =
        subtotal +
        shipping;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Checkout",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 75,
              padding: const EdgeInsets.all(
                12,
              ),
              margin: const EdgeInsets.all(
                12,
              ),
              decoration: const BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Shipping Address",
                      ),
                      Text(
                        "Add Shipping Address",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
              padding: const EdgeInsets.all(
                12,
              ),
              margin: const EdgeInsets.all(
                12,
              ),
              decoration: const BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Payment Method",
                      ),
                      Text(
                        "Add Payment Method",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                16.0,
              ),
              child: Column(
                children: [
                  _buildSummaryRow(
                    "Subtotal",
                    "Rs. $subtotal",
                  ),
                  _buildSummaryRow(
                    "Shipping Cost",
                    "Rs. $shipping",
                  ),
                  const Divider(),
                  _buildSummaryRow(
                    "Total",
                    "Rs. $total",
                    isBold: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => const CheckoutScreen(),
                    ),
                  ),
                },
                style: TextButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                ),
                child: const Text(
                  "Place Order",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget
  _buildSummaryRow(
    String
    label,
    String
    value, {
    bool
        isBold =
        false,
  }) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: isBold
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
