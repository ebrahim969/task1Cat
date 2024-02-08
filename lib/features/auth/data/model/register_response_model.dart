class RegisterResponseModel{
    final String message;

    RegisterResponseModel({required this.message});

    factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
        return RegisterResponseModel(message: json["message"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["message"] = message;
        return _data;
    }
}