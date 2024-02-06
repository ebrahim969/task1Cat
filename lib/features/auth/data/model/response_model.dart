class ResponseModel{
    final String message;

    ResponseModel({required this.message});

    factory ResponseModel.fromJson(Map<String, dynamic> json) {
        return ResponseModel(message: json["message"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["message"] = message;
        return _data;
    }
}