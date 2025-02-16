import 'package:gcamp_team10/feature/home/data/home_repo/home_repo.dart';
import 'package:gcamp_team10/feature/home/presentation/manager/category_cubit/category_state.dart';
import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final HomeRepo homeRepo;

  CategoryCubit( this.homeRepo):super (CategoryInitial());

  fetchCategory() async {
    emit(CategoryLoading());
    var result = await homeRepo.fetchCategory();
    result.fold((ifLeft) {
      emit(CategoryFailed(ifLeft.error));
    }, (ifRight) {
      emit(CategorySuccess(ifRight));
    });
  }
}
