import 'package:flutter/material.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/recommended_card.dart';

class RecommendedScroll extends StatelessWidget {
  const RecommendedScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, i) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: RecommendedCard(),
      );
    }, childCount: 4));
  }
}
