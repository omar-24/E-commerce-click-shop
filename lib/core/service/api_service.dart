import 'package:dio/dio.dart';
import 'package:gcamp_team10/feature/home/data/models/product_model.dart';

class ApiService {
  final baseUrl = "https://orientonline.info/api/products";
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> post(
      {required String endpoint, required Map<String, dynamic> data}) async {
    Response response = await _dio.post("$baseUrl$endpoint", data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> patch(
      {required String endpoint, required Map<String, dynamic> data}) async {
    Response response = await _dio.patch("$baseUrl$endpoint", data: data);
    return response.data;
  }

  Future<List<Product>> get(
      {required String endpoint, required Map<String, dynamic> data}) async {
    Response response = await _dio.get("$baseUrl$endpoint");
    List<Product> AllProduct=[];
    for(Map i in response.data["products"]){
      AllProduct.add(Product.fromjson(i));
    }
    return AllProduct;
  }
}
