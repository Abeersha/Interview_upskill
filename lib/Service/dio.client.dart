import 'package:dio/dio.dart';

class DioClient {
  static Dio dio = Dio(
    BaseOptions(baseUrl:"http://192.168.1.110:9000/api/user"
    ),);

  
}