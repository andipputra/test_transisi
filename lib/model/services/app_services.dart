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

  Future<Response?> loginService({
    required String email,
    required String password,
  }) async {
    try {
      return await dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );
    } on DioError catch (e) {
      return e.response;
    }
  }

  Future<Response?> register({
    required String email,
    required String password,
  }) async {
    try {
      return await dio.post(
        '/register',
        data: {
          'email': email,
          'password': password,
        },
      );
    } on DioError catch (e) {
      return e.response;
    }
  }

  Future<Response?> getAllUser({
    int? page,
  }) async {
    try {
      return await dio.get(
        '/users',
        queryParameters: {'page': page},
      );
    } on DioError catch (e) {
      return e.response;
    }
  }

  Future<Response?> getSingleUser({
    required int id,
  }) async {
    try {
      return await dio.get(
        '/users/$id',
      );
    } on DioError catch (e) {
      return e.response;
    }
  }

  Future<Response?> createUser({
    required String name,
    required String job,
  }) async {
    try {
      return await dio.post(
        '/users',
        data: {
          "name": name,
          "job": job,
        },
      );
    } on DioError catch (e) {
      return e.response;
    }
  }
}
