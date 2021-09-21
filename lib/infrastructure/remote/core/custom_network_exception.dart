import 'package:dio/dio.dart' hide Headers;

//didn't used yet
class CustomNetworkException implements Exception {
 int? _errorCode;
 String _errorMessage = "";
 //AuthFailure?  _error;

   CustomNetworkException.withError({required DioError error}) {
    _handleError(error);
  }

  getErrorCode() {
    return _errorCode;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  _handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.cancel:
        _errorMessage = "Request was cancelled";
        //_error=AuthFailure.cancelledByUser();
        break;
      case DioErrorType.connectTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioErrorType.other:
        _errorMessage =
            "Connection failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        _errorMessage = "Receive timeout in connection";
        break;
      case DioErrorType.response:
        _errorMessage =
            "Received invalid status code: ${error.response!.statusCode}";
        break;
      case DioErrorType.sendTimeout:
        _errorMessage = "Receive timeout in send request";
        break;
    }
    return _errorMessage;
  }
}