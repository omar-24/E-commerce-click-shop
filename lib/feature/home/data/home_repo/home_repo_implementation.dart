import 'package:dartz/dartz.dart';
import 'package:gcamp_team10/core/service/api_service.dart';
import 'package:gcamp_team10/core/service/errors.dart';
import 'package:gcamp_team10/feature/home/data/home_repo/home_repo.dart';
import 'package:gcamp_team10/feature/home/data/models/categoty_model.dart';
import 'package:gcamp_team10/feature/home/data/models/product_model.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<ProductCategory>>> fetchCategory() async {
    try {
      var data = await apiService.get(endpoint: "categories");
      List<ProductCategory> categoryList = [];
      for (var i in data["categories"]) {
        categoryList.add(ProductCategory.fromJson(i));
        print(categoryList);
      }
      return right(categoryList);
    } catch (e) {
      return left(ServerError(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> fetchProducts() async {
    try {
      var data = await apiService.get(endpoint: "products");
      List<Product> productList = [];
      for (var i in data["products"]) {
        productList.add(Product.fromjson(i));
        print(productList);
      }
      return right(productList);
    } catch (e) {
      return left(ServerError(error: e.toString()));
    }
  }
}
