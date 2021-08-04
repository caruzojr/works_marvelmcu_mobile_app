class ErrorModel {
  int statusCode;
  String reasonPhrase;

  ErrorModel({this.statusCode, this.reasonPhrase});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    reasonPhrase = json['reasonPhrase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['reasonPhrase'] = this.reasonPhrase;
    return data;
  }
}
