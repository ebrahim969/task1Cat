import 'dart:convert';

class UserModel {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String confirmPassword;

  UserModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      name: jsonData['name'],
      phone: jsonData['phone'],
      email: jsonData['email'],
      password: jsonData['password'],
      confirmPassword: jsonData['confirmPassword'],
    );
  }
}
