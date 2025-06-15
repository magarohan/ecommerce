import 'package:flutter_ecommerce/category.dart';
import 'package:flutter_ecommerce/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/themes/colors.dart';

class HomeScreen
    extends
        StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<
    HomeScreen
  >
  createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends
        State<
          HomeScreen
        > {
  String
  dropdownValue =
      'Men';
  final List<
    String
  >
  dropdownItems = [
    'Men',
    'Women',
  ];

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          140,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Avatar
                    IconButton(
                      icon: const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/profile',
                        );
                      },
                    ),
                    // Dropdown
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child:
                            DropdownButton<
                              String
                            >(
                              value: dropdownValue,
                              icon: const Icon(
                                Icons.keyboard_arrow_down_outlined,
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              dropdownColor: Colors.white,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              items: dropdownItems.map(
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
                                    String? newValue,
                                  ) {
                                    setState(
                                      () {
                                        dropdownValue = newValue!;
                                      },
                                    );
                                  },
                            ),
                      ),
                    ),
                    // Shopping Bag
                    Container(
                      decoration: const BoxDecoration(
                        color: MyColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/cart',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.backgroundColor2,
                    borderRadius: BorderRadius.circular(
                      24,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View All",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategory(
                  'Hoodies',
                  'https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=600',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (
                              context,
                            ) => (const CategoryScreen(
                              label: "Hoodies",
                              imageUrl: 'https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=600',
                            )),
                      ),
                    );
                  },
                ),
                _buildCategory(
                  'Shorts',
                  'https://images.pexels.com/photos/32222838/pexels-photo-32222838/free-photo-of-man-posing-at-liberty-square-arch-in-taipei.jpeg?auto=compress&cs=tinysrgb&w=600',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (
                              context,
                            ) => (const CategoryScreen(
                              label: "Shorts",
                              imageUrl: 'https://images.pexels.com/photos/32222838/pexels-photo-32222838/free-photo-of-man-posing-at-liberty-square-arch-in-taipei.jpeg?auto=compress&cs=tinysrgb&w=600',
                            )),
                      ),
                    );
                  },
                ),
                _buildCategory(
                  'Shoes',
                  'https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (
                              context,
                            ) => (const CategoryScreen(
                              label: "Shoes",
                              imageUrl: 'https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
                            )),
                      ),
                    );
                  },
                ),
                _buildCategory(
                  'Bags',
                  'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg?auto=compress&cs=tinysrgb&w=600',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (
                              context,
                            ) => (const CategoryScreen(
                              label: "Bags",
                              imageUrl: 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg?auto=compress&cs=tinysrgb&w=600',
                            )),
                      ),
                    );
                  },
                ),
                _buildCategory(
                  'Accessories',
                  'https://images.pexels.com/photos/343720/pexels-photo-343720.jpeg?auto=compress&cs=tinysrgb&w=600',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (
                              context,
                            ) => (const CategoryScreen(
                              label: "Accessories",
                              imageUrl: 'https://images.pexels.com/photos/343720/pexels-photo-343720.jpeg?auto=compress&cs=tinysrgb&w=600',
                            )),
                      ),
                    );
                  },
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Selling",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View All",
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildProductCard(
                    'Jacket',
                    'Rs. 9999',
                    'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'Jacket',
                                price: 'Rs. 9999',
                                imageUrl: 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                  _buildProductCard(
                    'T-shirt',
                    'Rs. 888',
                    'https://images.pexels.com/photos/991509/pexels-photo-991509.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'T-shirt',
                                price: 'Rs. 888',
                                imageUrl: 'https://images.pexels.com/photos/991509/pexels-photo-991509.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                  _buildProductCard(
                    'Pants',
                    'Rs. 4645',
                    'https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'Pants',
                                price: 'Rs. 4645',
                                imageUrl: 'https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                  _buildProductCard(
                    'Shoes',
                    'Rs. 5645',
                    'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'Shoes',
                                price: 'Rs. 5645',
                                imageUrl: 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View All",
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildProductCard(
                    'Jacket',
                    'Rs. 9999',
                    'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'Jacket',
                                price: 'Rs. 9999',
                                imageUrl: 'https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                  _buildProductCard(
                    'T-shirt',
                    'Rs. 888',
                    'https://images.pexels.com/photos/991509/pexels-photo-991509.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'T-shirt',
                                price: 'Rs. 888',
                                imageUrl: 'https://images.pexels.com/photos/991509/pexels-photo-991509.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                  _buildProductCard(
                    'Pants',
                    'Rs. 4645',
                    'https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'Pants',
                                price: 'Rs. 4645',
                                imageUrl: 'https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                  _buildProductCard(
                    'Shoes',
                    'Rs. 5645',
                    'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=600',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (
                                context,
                              ) => (const ProductScreen(
                                label: 'Shoes',
                                price: 'Rs. 5645',
                                imageUrl: 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=600',
                              )),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget
  _buildCategory(
    String
    label,
    String
    imageUrl,
    VoidCallback
    onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              imageUrl,
            ),
          ),
          Text(
            label,
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
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              10,
            ),
            child: Image.network(
              imageUrl,
              height: 160,
              width: 120,
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
    );
  }
}
