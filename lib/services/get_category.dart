import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product.dart';
import 'package:storeapp/ui/shared/consts.dart';

class CategoryServices {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> itemsOfProducts = [];
    for (int i = 0; i < data.length; i++) {
      itemsOfProducts.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return itemsOfProducts;
  }
}