import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule{
  @singleton
  Dio get dio => Dio();//better if we create class change settings of dio

}