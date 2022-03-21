import 'dart:convert' show json, base64, ascii;

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';


@injectable
class SecureStorage {
  final _storage = FlutterSecureStorage();
  //Options
  final androidOptions = const AndroidOptions(
    encryptedSharedPreferences: true,
  );
  final iOSOptions = IOSOptions(accessibility: IOSAccessibility.first_unlock);

  Future<void> writeSecureData(String key, String value) {
    return _storage.write(key: key, value: value,iOptions: iOSOptions,aOptions:androidOptions );
  }

  Future<String?> readSecureData(String key) {
    return _storage.read(key: key,iOptions: iOSOptions,aOptions:androidOptions);
  }

  Future<void> deleteSecureData(String key) {
    return _storage.delete(key: key,iOptions: iOSOptions,aOptions:androidOptions);
  }

  ///False mean not valid token, (also we can use Either here)
  ///True mean valid token
  Future<String?> validateToken(String key) async {
    String? jwtData = await readSecureData(key);

    if (jwtData != null || jwtData != "") {
      var jwt = jwtData?.split(".");
      if (jwt?.length != 3) {
        //token not valid
        await deleteSecureData(key);
        return null;
      } else {
        var payload =
            json.decode(ascii.decode(base64.decode(base64.normalize(jwt![1]))));
        if (DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000)
            .isAfter(DateTime.now())) {
          //token valid
          return jwtData;
        }
      }
    }
    //token not valid
    await deleteSecureData(key);
    return null;
  }

  Future<int> writeWithValidate(String key, String? value) async {
    if (value != null || value != "") {
      var jwt = value!.split(".");
      if (jwt.length != 3) {
        //token not valide
        return -1;
      } else {
        var payload =
            json.decode(ascii.decode(base64.decode(base64.normalize(jwt[1]))));
        if (DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000)
            .isAfter(DateTime.now())) {
          //token valide
          await writeSecureData(key, value);
          return 1;
        }
        //token not valid
      }
    }
    //token not valide
    return -1;
  }
}
