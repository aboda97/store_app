import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class PostProductsApi {
  Future<ProductModel> addProduct({
    required String url,
    @required dynamic body,
    @required String? token,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    http.Response response =
        await http.post(Uri.parse('https://fakestoreapi.com/products'), body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return ProductModel.fromJson(data);
    } else {
      throw Exception('there is a problem in Status Code Sir! ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}

//------------------------ Another Answer with Api Class in helper folder ----------------------
/*

class PostProductsApi {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data =
    await Api().post(Uri.parse('https://fakestoreapi.com/products'), body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromJson(data);
  }
 }

 */
