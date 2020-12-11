import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:task1_app/data/http_helper/ihttpe_helper.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:task1_app/model/item_model/item_list.dart';
import 'package:task1_app/model/serializer/serializer.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  var url = "http://bikehub.store/api/customer/menus";

  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }

  @override
  Future<ItemList> getMenus() async {
    _dio.interceptors.add(CookieManager(cookieJar));
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        //print('getMenus Response body  ${response.data}');

        final ItemList baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: FullType(ItemList));

        //print("getMenus status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }
}
