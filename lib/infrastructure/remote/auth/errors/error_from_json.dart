class ResponseError {
  int statusCode;
  String message;
  String? error;

  ResponseError(this.statusCode, this.message, {this.error = "Server Error"});

  factory ResponseError.fromJson(dynamic json) {
    return ResponseError(json['statusCode'] as int, json['message'] as String,
        error: json['message'] as String);
  }

  @override
  String toString() {
    return '{ statusCode:${this.statusCode}, message:${this.message}, error:${this.error} }';
  }
}
