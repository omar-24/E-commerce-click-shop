import 'package:gcamp_team10/feature/home/data/home_repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/product_cubit/products_states.dart';

class ProductCubit extends Cubit<ProductState> {
  final HomeRepo homeRepo;

  ProductCubit(this.homeRepo):super (ProductInitial());

  fetchProduct() async {
    emit(ProductLoading());
    var result = await homeRepo.fetchProducts();
    result.fold((ifLeft) {
      emit(ProductFailed(ifLeft.error));
    }, (ifRight) {
      emit(ProductSuccess(ifRight));
    });
  }
}
