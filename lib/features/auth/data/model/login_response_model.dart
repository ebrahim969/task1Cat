class LoginResponseModel{
    final String message;
    String? token;

    LoginResponseModel({required this.message, this.token});

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
        return LoginResponseModel(
          message: json["message"],
          token: json['token'],
          );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["message"] = message;
        data["token"] = token;
        return data;
    }
}