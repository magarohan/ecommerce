import 'package:flutter_ecommerce/checkout.dart';
import 'package:flutter_ecommerce/themes/colors.dart';
import 'package:flutter/material.dart';

class CartScreen
    extends
        StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  State<
    CartScreen
  >
  createState() =>
      _CartScreenState();
}

class _CartScreenState
    extends
        State<
          CartScreen
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

  void
  _removeAllItems() {
    setState(() {
      cartItems.clear();
    });
  }

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
          "Cart",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (cartItems.isNotEmpty)
            TextButton.icon(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(
                  Colors.red,
                ),
              ),
              onPressed: _removeAllItems,
              icon: const Icon(
                Icons.delete,
              ),
              label: const Text(
                "Remove all",
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder:
                  (
                    context,
                    index,
                  ) {
                    final item = cartItems[index];
                    return _buildCardWidget(
                      item['label']!,
                      item['price']!,
                      item['quantity']!,
                      item['imageUrl']!,
                    );
                  },
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
          // ignore: prefer_const_constructors
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
                "Checkout",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget
  _buildCardWidget(
    String
    label,
    String
    price,
    String
    quantity,
    String
    imageUrl,
  ) {
    return Container(
      padding: const EdgeInsets.all(
        10,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
        color: MyColors.backgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
            child: Image.network(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Rs. $price",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Quantity: $quantity",
                ),
              ],
            ),
          ),
        ],
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
