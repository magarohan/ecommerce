import 'package:flutter_ecommerce/themes/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen
    extends
        StatefulWidget {
  final String
  label;
  final String
  imageUrl;
  final String
  price;

  const ProductScreen({
    super.key,
    required this.label,
    required this.imageUrl,
    required this.price,
  });

  @override
  State<
    ProductScreen
  >
  createState() =>
      _ProductScreenState();
}

class _ProductScreenState
    extends
        State<
          ProductScreen
        > {
  final List<
    String
  >
  sizes = [
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];
  final List<
    Color
  >
  colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];

  String
  selectedSize =
      "S";
  Color
  selectedColor =
      Colors.green;

  get onPressed =>
      null;

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                8,
              ),
              child: Image.network(
                widget.imageUrl,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.price,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor,
              ),
            ),
            const Text(
              "lorem ipsum dolor sit amet",
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Text(
                  "Size: ",
                ),
                const SizedBox(
                  width: 8,
                ),
                DropdownButton<
                  String
                >(
                  value: selectedSize,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  items: sizes.map(
                    (
                      String item,
                    ) {
                      return DropdownMenuItem<
                        String
                      >(
                        value: item,
                        child: Text(
                          item,
                        ),
                      );
                    },
                  ).toList(),
                  onChanged:
                      (
                        value,
                      ) {
                        setState(
                          () {
                            selectedSize = value!;
                          },
                        );
                      },
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Text(
                  "Color: ",
                ),
                const SizedBox(
                  width: 8,
                ),
                DropdownButton<
                  Color
                >(
                  value: selectedColor,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  items: colors.map(
                    (
                      Color color,
                    ) {
                      return DropdownMenuItem<
                        Color
                      >(
                        value: color,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: color,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged:
                      (
                        Color? value,
                      ) {
                        setState(
                          () {
                            selectedColor = value!;
                          },
                        );
                      },
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => {
                  print(
                    "added to cart",
                  ),
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                ),
                child: const Text(
                  "Add to Cart",
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
}
