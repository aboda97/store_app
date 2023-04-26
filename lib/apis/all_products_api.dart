import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';


class AllProductsApi {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      print(data.toString());

      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(
          ProductModel.fromJson(data[i]),
        );

      }
      return productList;
    } else {
      throw Exception('there is a problem with status code sir! ${response.statusCode}');
    }
  }
}

//------------------------ Another Answer with Api Class in helper floder ----------------------
/*

class AllProductsApi {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get( url: 'https://fakestoreapi.com/products', );

        print(data.toString());

      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productList;
  }
}

*/
