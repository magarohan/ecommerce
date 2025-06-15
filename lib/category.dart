import 'package:flutter_ecommerce/product.dart';
import 'package:flutter/material.dart';

class CategoryScreen
    extends
        StatefulWidget {
  final String?
  label;
  final String?
  imageUrl;
  const CategoryScreen({
    super.key,
    this.label,
    this.imageUrl,
  });

  @override
  State<
    CategoryScreen
  >
  createState() =>
      _CategoryState();
}

class _CategoryState
    extends
        State<
          CategoryScreen
        > {
  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.label!,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 5,
        childAspectRatio: 0.6,
        children:
            <
              Widget
            >[
              _buildProductCard(
                "${widget.label} 1",
                "1000",
                "${widget.imageUrl}",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => (ProductScreen(
                            label: "${widget.label} 1",
                            price: 'Rs. 1000',
                            imageUrl: "${widget.imageUrl}",
                          )),
                    ),
                  );
                },
              ),
              _buildProductCard(
                "${widget.label} 2",
                "1234",
                "${widget.imageUrl}",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => (ProductScreen(
                            label: "${widget.label} 1",
                            price: 'Rs. 1000',
                            imageUrl: "${widget.imageUrl}",
                          )),
                    ),
                  );
                },
              ),
              _buildProductCard(
                "${widget.label} 3",
                "1123",
                "${widget.imageUrl}",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => (ProductScreen(
                            label: "${widget.label} 1",
                            price: 'Rs. 1000',
                            imageUrl: "${widget.imageUrl}",
                          )),
                    ),
                  );
                },
              ),
              _buildProductCard(
                "${widget.label} 4",
                "1112",
                "${widget.imageUrl}",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => (ProductScreen(
                            label: "${widget.label} 1",
                            price: 'Rs. 1000',
                            imageUrl: "${widget.imageUrl}",
                          )),
                    ),
                  );
                },
              ),
              _buildProductCard(
                "${widget.label} 5",
                "1111",
                "${widget.imageUrl}",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => (ProductScreen(
                            label: "${widget.label} 1",
                            price: 'Rs. 1000',
                            imageUrl: "${widget.imageUrl}",
                          )),
                    ),
                  );
                },
              ),
              _buildProductCard(
                "${widget.label} 6",
                "1000",
                "${widget.imageUrl}",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (
                            context,
                          ) => (ProductScreen(
                            label: "${widget.label} 1",
                            price: 'Rs. 1000',
                            imageUrl: "${widget.imageUrl}",
                          )),
                    ),
                  );
                },
              ),
            ],
      ),
    );
  }

  Widget
  _buildProductCard(
    String
    label,
    String
    price,
    String
    imageUrl,
    VoidCallback
    onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                8,
              ),
              child: Image.network(
                imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              label,
            ),
            Text(
              price,
            ),
          ],
        ),
      ),
    );
  }
}
