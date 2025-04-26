import 'package:dio/dio.dart';

class ApiService {
  static const baseUrl = 'https://dev.hanot.co/khan.com/api/v1/mobile';


  static final Dio _dio = Dio(
    BaseOptions(
        headers: {'Content-Type': 'application/json'},
        receiveDataWhenStatusError: true),
  );

  static Future<Map<String, dynamic>> getData({required String endPoint,}) async {
    Response res = await _dio.get(
      baseUrl + endPoint,
    );
    return res.data;
  }

  static Future postData({required String endPoint, required postedData}) async {
    Response res = await _dio.post(baseUrl + endPoint, data: postedData);
    return res.data;
  }

  static Future getDataWithToken({required String endPoint, String? perPage}) async {
    Response res = await _dio.get(
      perPage == null ? baseUrl + endPoint : '$baseUrl$endPoint?page=1&pre_page=$perPage',
    );
    return res.data;
  }

  static Future postDataWithToken({required String endPoint, required postedData}) async {
    Response res = await _dio.post(baseUrl + endPoint, data: postedData);
    return res.data;
  }

  static Future delete({required String endPoint}) async {
    var res = await _dio.delete(baseUrl + endPoint);
    return res.data;
  }

  static Future update({required String endPoint, required Map body}) async {
    Response res = await _dio.put(baseUrl + endPoint, data: body);
    return res.data;
  }

}