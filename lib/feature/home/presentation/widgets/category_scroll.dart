import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gcamp_team10/feature/home/data/models/categoty_model.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/category_card.dart';

class CategoryScroll extends StatelessWidget {
  CategoryScroll({super.key});

  final List<ProductsCategory> CATEGORY = [
    ProductsCategory(name: "Clothes", id: 1),
    ProductsCategory(name: "Makeup", id: 2),
    ProductsCategory(name: "Electronics", id: 3),
    ProductsCategory(name: "favorite", id: 4),
    ProductsCategory(name: "Offers", id: 5),
    ProductsCategory(name: "Recommended", id: 6),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 65,
        child: ListView.builder(
          itemBuilder: (context, idx) {
            return CategoryCard(category: CATEGORY[idx],);
          },
          itemCount: CATEGORY.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
