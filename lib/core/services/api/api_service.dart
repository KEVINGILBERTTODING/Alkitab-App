import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yesheis/core/constans/response_constans.dart';
import 'package:yesheis/core/models/book/book_model.dart';
import 'package:yesheis/core/models/passage/bible/bibles_model.dart';
import 'package:yesheis/core/models/passage/header/headers_model.dart';
import 'package:yesheis/core/models/response_api/response_api_model.dart';
import 'package:yesheis/core/services/api/end_point.dart';

class ApiService extends GetxService {
  Future<ResponseApiModel> getBook() async {
    try {
      final responseApiModel =
          await http.get(Uri.parse(EndPoint.book_end_point));
      final responseJson = await jsonDecode(responseApiModel.body);
      print(responseJson.toString());

      if (responseApiModel.statusCode == 200) {
        return ResponseApiModel(
            state: ResponseConstans.success_state,
            message: ResponseConstans.success_message,
            data: (responseJson['data'] as List)
                .map((item) => BookModel.fromJson(item))
                .toList());
      } else {
        return ResponseApiModel(
            state: ResponseConstans.error_state,
            message: ResponseConstans.something_went_wrong,
            data: null);
      }
    } catch (e) {
      print(e.toString());

      return ResponseApiModel(
          state: ResponseConstans.error_server_state,
          message: ResponseConstans.server_err_msg,
          data: null);
    }
  }

  Future<ResponseApiModel> getChapter(String abbr, int verse) async {
    try {
      final url = EndPoint.base_url + "passage?passage=$abbr&num=$verse";
      final responseApi = await http.get(Uri.parse(url));
      final responseJson = jsonDecode(responseApi.body);

      if (responseApi.statusCode == 200) {
        return ResponseApiModel(
            state: ResponseConstans.success_state,
            message: ResponseConstans.success_message,
            data: HeadersModel.fromJson(responseJson));
      } else {
        return ResponseApiModel(
            state: ResponseConstans.error_state,
            message: ResponseConstans.something_went_wrong,
            data: null);
      }
    } catch (e) {
      print(e.toString());
      return ResponseApiModel(
          state: ResponseConstans.error_server_state,
          message: ResponseConstans.server_err_msg,
          data: null);
    }
  }
}
