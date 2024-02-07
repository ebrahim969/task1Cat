import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://food-api-omega.vercel.app/api/v1/user/";
  final Dio _dio ;
  ApiService(this._dio);
  Future<Map<String, dynamic>> post({
    required bool formData,
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    var response = await _dio.post(
      "$_baseUrl$endPoint",
      data:formData? FormData.fromMap(data) : data,
    );
    return response.data;
  }
}
