import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gcamp_team10/feature/home/data/models/categoty_model.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/category_cubit/category_state.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/category_card.dart';

import '../../../../core/assets/colors.dart';

class CategoryScroll extends StatelessWidget {
  CategoryScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if(state is CategorySuccess){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 60,
              child: ListView.builder(
                itemBuilder: (context, idx) {
                  return CategoryCard(category: state.category[idx],);
                },
                itemCount: state.category.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
        }else if(state is CategoryFailed){
          return Text("${state.error}",style: TextStyle(color: Colors.white),);
        }
        else{
          return Center(child:CircularProgressIndicator(color: AppColor.primaryColor,),);
        }
      },
    );
  }
}
