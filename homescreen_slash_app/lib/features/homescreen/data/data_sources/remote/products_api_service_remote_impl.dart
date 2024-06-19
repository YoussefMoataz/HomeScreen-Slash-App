import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/remote/products_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/products_list_model.dart';

import '../../../../../core/constants/constants.dart';

class ProductsApiServiceRemoteImpl implements ProductsApiServiceRemote {
  @override
  Future<ProductsListModel?> getProducts() async {
    // await Future.delayed(Duration(seconds: 1));

    final json = await rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));

    ProductsListModel model = ProductsListModel.fromJson(json);
    return model;
  }
}
