import 'package:ecommerce/themes/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen
    extends StatefulWidget {
  final String
      label;
  final String
      imageUrl;
  final String
      price;
  const ProductScreen(
      {super.key,
      required this.label,
      required this.imageUrl,
      required this.price});

  @override
  State<ProductScreen> createState() =>
      _ProductScreenState();
}

class _ProductScreenState
    extends State<ProductScreen> {
  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                widget.imageUrl,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.label,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  widget.price,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.primaryColor),
                  textAlign: TextAlign.left,
                ),
              ],
            )
          ],
        ));
  }
}
