import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TestApi extends StatelessWidget {
  const TestApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () async {
            await signupUser();
          },
          child: const Text("Check")),
    );
  }
}

Dio dio = Dio();

Future<void> signupUser() async {
  try {
    Response response =
        await dio.post('https://food-api-omega.vercel.app/api/v1/user/signup',
            data: FormData.fromMap({
              'name': "ebrahimmm",
              'phone': "0101643567",
              'email': "ebrahimelnemr09@gmail.com",
              'password': "01233210",
              'confirmPassword': "01233210",
              'location':
                  '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}'
            }));

    log('Signup successful: ${response.data}');
  } catch (e) {
    log('Error during signup: $e');
  }
}
