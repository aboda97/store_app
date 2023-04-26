import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
/*
class PutProductsApi {
  Future<ProductModel> putProduct({
    @required String? url,
    @required dynamic body,
    @required String? token,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type' : 'application/x-www-form-urlencoded',
    });
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    print('url=$url body=$body token=$token');
    http.Response response =
    await http.put(Uri.parse('https://fakestoreapi.com/products/$id'), body: {

      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data.toString());
      return ProductModel.fromJson(data);
    } else {
      throw Exception('there is a problem in Status Code Sir! ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
*/
//------------------------ Another Answer with Api Class in helper folder ----------------------


class PutProductsApi {
  Future<ProductModel> putProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    print('Prouduct id = $id');
    Map<String, dynamic> data =
    await Api().put(url:'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromJson(data);
  }
 }


