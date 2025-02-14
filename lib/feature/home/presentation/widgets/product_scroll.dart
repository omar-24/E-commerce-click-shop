import 'package:flutter/material.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/offer_card.dart';

class ProductScroll extends StatelessWidget {
  const ProductScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, idx) {
        return OfferCard();
      }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .7,
      ),
    );
  }
}
