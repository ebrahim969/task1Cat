class RegisterRequestModel {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String confirmPassword;

  RegisterRequestModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}
