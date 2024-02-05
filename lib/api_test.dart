import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

Dio dio = Dio(BaseOptions(
    baseUrl: 'https://food-api-omega.vercel.app/api/v1/user',));

Future<void> signupUser() async {
  try {
    Response response = await dio.post('/signup',
        data: FormData.fromMap({
          'name': "ebrahimmm",
          'phone': "0101643567",
          'email': "ebrahimelnemr09@gmail.com",
          'password': "01233210",
          'confirmPassword': "01233210",
          'location':
              '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]'
        }));

    print('Signup successful: ${response.data}');
  } catch (e) {
    print('Error during signup: $e');
  }
}



// var response = await http.post(
            //     Uri.parse(
            //         "https://food-api-omega.vercel.app/api/v1/user/signup"),
            //     body: {
            //       'name': 'anas',
            //       'phone': '01101459566',
            //       'email': 'anas423@gmail.com',
            //       'password': 'anas123',
            //       'confirmPassword': 'anas123',
            //       'location':
            //           '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}'
            //     },
            // );
            // print(response.body);
