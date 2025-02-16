
import 'package:gcamp_team10/feature/home/data/models/product_model.dart';

abstract class ProductState{}

class ProductInitial extends ProductState{}
class ProductLoading extends ProductState{}
class ProductSuccess extends ProductState{
  final List<Product> product;

  ProductSuccess(this.product);
}
class ProductFailed extends ProductState{
  final String error;

  ProductFailed(this.error);
}
