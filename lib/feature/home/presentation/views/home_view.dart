import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gcamp_team10/core/service/api_service.dart';
import 'package:gcamp_team10/feature/home/data/home_repo/home_repo_implementation.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/category_cubit/category_state.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/product_cubit/products_states.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/app_bar_text.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/category_scroll.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/custom_bottm_navigation_bar.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/custom_search_bar.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/offer_card.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/offer_scroll.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/recommended_card.dart';
import '../widgets/product_scroll.dart';
import '../widgets/recommended_scroll.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider<CategoryCubit>(create: (context) =>CategoryCubit( HomeRepoImplementation(apiService: ApiService(dio: Dio())))..fetchCategory()),
      BlocProvider<ProductCubit>(create: (context) =>ProductCubit( HomeRepoImplementation(apiService: ApiService(dio: Dio())))..fetchProduct()),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: AppBarText(),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: CustomSearchBar()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: Text("Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 5)),
              SliverToBoxAdapter(child: CategoryScroll()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: ProductScroll()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: Text(
                  "Recommended",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 5)),
              RecommendedScroll(),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: Text(
                  "Offers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 5)),
              OffersScroll(),
            ],
          ),
        ),
      ),
    );
  }
}
