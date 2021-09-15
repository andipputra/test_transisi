import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:transisi_test/model/services/app_services.dart';

class DioAdapterMock extends Mock implements Dio {}

void main() {
  final service = AppServices();
  group('services', () {
    group('login', () {
      test('Login Success', () async {
        final res = await service.loginService(
          email: 'eve.holt@reqres.in',
          password: 'cityslicka',
        );

        expect(res!.statusCode, 200);
      });

      test('Login Failure', () async {
        final res = await service.loginService(
          email: 'eve.holt@reqres.in',
          password: '',
        );

        expect(res!.statusCode, 400);
      });
    });
  });
}
