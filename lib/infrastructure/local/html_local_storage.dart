// ignore: avoid_web_libraries_in_flutter
import 'package:universal_html/html.dart';
import 'dart:convert' show json, base64, ascii;

import 'package:injectable/injectable.dart';

const KEYCSRF = "csrf";

@injectable
class WebStorage {
  final Storage _localStorage = window.localStorage;

  Future writeSecureData(String value, String key) async {
    _localStorage[key] = value;
  }

  ///get key "csrf" value by defult
  Future<String?> readSecureData(String key) async {
    var value = _localStorage[key];
    return value;
  }

  ///remove data
  Future deleteSecureData(String key) async {
    _localStorage.remove(key);
  }

  ///False mean not valid token, (also we can use Either here)
  ///True mean valid token
  Future<String?> validateToken(String key) async {
    String? csrfTokenOrEmpty =
        _localStorage.containsKey(key) ? _localStorage[key] : "";
    if (csrfTokenOrEmpty != "" || csrfTokenOrEmpty != null) {
      var token = csrfTokenOrEmpty!.split(".");
      if (token.length != 3) {
        //token not valide
        await deleteSecureData(KEYCSRF);
        return null;
      } else {
        var payload = json
            .decode(ascii.decode(base64.decode(base64.normalize(token[1]))));
        if (DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000)
            .isAfter(DateTime.now())) {
          //token valide
          return csrfTokenOrEmpty;
        }
      }
    }
    await deleteSecureData(KEYCSRF);
    return null;
  }

  Future<int> writeWithValidate(String key, String? value) async {
    if (value != "" || value != null) {
      var token = value!.split(".");
      if (token.length != 3) {
        //token not valide
        return -1;
      } else {
        var payload = json
            .decode(ascii.decode(base64.decode(base64.normalize(token[1]))));
        if (DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000)
            .isAfter(DateTime.now())) {
          //token valide
          await writeSecureData(value, KEYCSRF);
          return  1;
        }
      }
    }
    return -1;
  }
}
