import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://food-api-omega.vercel.app/api/v1/user/signup";
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> post(
      // required endPoint,
      // required String name,
      // required String phone,
      // required String email,
      // required String password,
      ) async {
    final formData = FormData.fromMap({
      'name': "ebamn",
      'phone': "0938708913",
      'email': "wrei@gmail.com",
      'password': "0810930923",
      'confirmPassword': "0810930923",
      'location':
          '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]'
    });
    Response response = await _dio.post(_baseUrl, data: formData, options: Options(headers: {
      'Content-Type' : 'multipart/form-data'
    }));
    log(response.data);
    return response.data;
  }
}
