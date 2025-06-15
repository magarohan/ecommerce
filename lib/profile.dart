import 'package:flutter_ecommerce/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen
    extends
        StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<
    ProfileScreen
  >
  createState() =>
      _ProfileScreenState();
}

class _ProfileScreenState
    extends
        State<
          ProfileScreen
        > {
  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "name@example.com",
                  ),
                  Text(
                    "9876543210",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Row(
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Row(
                children: [
                  Text(
                    "Whishlist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Row(
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Row(
                children: [
                  Text(
                    "Help",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: MyColors.backgroundColor2,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Row(
                children: [
                  Text(
                    "Support",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.backgroundColor2,
                  minimumSize: const Size(
                    200,
                    50,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
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
