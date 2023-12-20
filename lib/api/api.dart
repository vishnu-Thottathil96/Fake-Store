import 'dart:convert';
import 'dart:developer';
import 'package:fakestore/model/product_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const getProductsUrl = 'https://fakestoreapi.com/products';
  static const addProductUrl = 'https://fakestoreapi.com/products';
  static const putAndPatchUrl = 'https://fakestoreapi.com/products/';

  Future<List<Product>> getProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      final allProductList = json.decode(response.body) as List;
      return allProductList
          .map((product) => Product.fromJson(product))
          .toList();
    } else {
      throw Exception('something went wrong');
    }
  }

  Future<void> addProducts({
    required String name,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    final response = await http.post(Uri.parse(addProductUrl), body: {
      'title': name,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    if (response.statusCode == 200) {
      log('Status code : ${response.statusCode} POST Successfull');
    }
  }

  Future<void> upDateProduct({
    required Product product,
    required bool put,
  }) async {
    if (put == true) {
      final response =
          await http.put(Uri.parse('$putAndPatchUrl${product.id}'), body: {
        'title': product.title,
        'price': product.price,
        'description': product.description,
        'image': product.image,
        'category': product.categoy,
      });
      if (response.statusCode == 200) {
        log('Status code : ${response.statusCode} PUT Successfull');
      }
    } else {
      final response =
          await http.patch(Uri.parse('$putAndPatchUrl${product.id}'), body: {
        'title': product.title,
        'price': product.price,
        'description': product.description,
        'image': product.image,
        'category': product.categoy,
      });
      if (response.statusCode == 200) {
        log('Status code : ${response.statusCode} PATCH Successfull');
      }
    }
  }

  Future<void> deleteData({required Product product}) async {
    final response =
        await http.delete(Uri.parse('$putAndPatchUrl${product.id}'));
    if (response.statusCode == 200) {
      log('Status code : ${response.statusCode} Delete Successfull');
    }
  }
}
