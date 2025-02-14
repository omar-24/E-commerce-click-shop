import 'package:flutter/material.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/app_bar_text.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/category_scroll.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/custom_bottm_navigation_bar.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/custom_search_bar.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/offer_card.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/product_scroll.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/recommended_card.dart';

import '../widgets/recommended_scroll.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: AppBarText(),
          backgroundColor: Colors.white,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomSearchBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 5),
            ),
            SliverToBoxAdapter(
              child: CategoryScroll(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Text("Recommended",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 5),
            ),
            RecommendedScroll(),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Text("Offers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 5),
            ),
            ProductScroll(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar());
  }
}
