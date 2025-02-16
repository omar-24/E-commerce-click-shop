

import 'package:flutter/foundation.dart';
import 'package:gcamp_team10/feature/home/data/models/categoty_model.dart';
import 'package:gcamp_team10/feature/home/data/models/product_model.dart';

abstract class CategoryState{}

class CategoryInitial extends CategoryState{}
class CategoryLoading extends CategoryState{}
class CategorySuccess extends CategoryState{
  final List<ProductCategory> category;

  CategorySuccess(this.category);
}
class CategoryFailed extends CategoryState{
  final String error;

  CategoryFailed(this.error);
}
