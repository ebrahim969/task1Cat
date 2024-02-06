import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://food-api-omega.vercel.app/api/v1/user/";
  final Dio _dio ;
  ApiService(this._dio);
  Future<Map<String, dynamic>> post({
    required endPoint,
    required Map<String, dynamic> data,
  }) async {
    Response response = await _dio.post(
      "$_baseUrl$endPoint",
      data: FormData.fromMap(data),
    );
    return response.data;
  }
}
