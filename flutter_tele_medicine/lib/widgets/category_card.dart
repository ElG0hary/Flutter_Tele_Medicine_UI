import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoryName, required this.categoryIcon});
  final String categoryName;
  final IconData categoryIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        margin: const EdgeInsets.all(16),
        width: (MediaQuery.of(context).size.width) * .15,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              categoryIcon,
              size: 32,
              color: const Color(0xff2c41ff),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                categoryName,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
