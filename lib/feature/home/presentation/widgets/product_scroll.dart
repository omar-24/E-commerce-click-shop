import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/product_cubit/products_states.dart';
import 'package:gcamp_team10/feature/home/presentation/widgets/product_card.dart';

class ProductScroll extends StatelessWidget {
  const ProductScroll({super.key});

  @override
  Widget build(BuildContext context) {
                print("object1");
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductSuccess){
                print("object2");
          return SizedBox(
            height: 280,
            child: ListView.builder(
              itemBuilder: (context, idx) {
                print("object3");
                return ProductCard(product: state.product[idx]);
              },
              itemCount: state.product.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        }else if(state is ProductFailed){
                print("object4");
          return Text("${state.error}",style: TextStyle(color: Colors.white),);
        }
        else{
          return Center(child:CircularProgressIndicator(color: AppColor.primaryColor,),);
        }
      },
    );
  }
}
