import 'package:dartz/dartz.dart';
import 'package:gcamp_team10/core/service/errors.dart';
import 'package:gcamp_team10/feature/home/data/models/categoty_model.dart';
import 'package:gcamp_team10/feature/home/data/models/product_model.dart';

abstract class HomeRepo{

  Future<Either<Failure,List<ProductCategory>>> fetchCategory();
  Future<Either<Failure,List<Product>>> fetchProducts();
}


