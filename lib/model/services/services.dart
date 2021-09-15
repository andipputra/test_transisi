import 'package:dio/dio.dart';

class AppServices {
  // final Dio dio;

  // AppServices({required this.dio});

// or new Dio with a BaseOptions instance.
  static final options = BaseOptions(
    baseUrl: 'https://reqres.in/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio = Dio(options);

  Future<Response?> loginService(
      {required String email, required String password}) async {
    try {
      return await dio
          .post('/login', data: {'email': email, 'password': password});
    } on DioError catch (e) {
      return e.response;
    }
  }

  Future<Response?> register(
      {required String email, required String password}) async {
    try {
      return await dio
          .post('/register', data: {'email': email, 'password': password});
    } on DioError catch (e) {
      return e.response;
    }
  }
}
