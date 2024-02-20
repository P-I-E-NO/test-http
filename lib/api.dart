import 'package:dio/dio.dart';
import 'package:test_http/car.dart';

class Api {
  Api({required this.client});

  final Dio client;

  Future<String> login(String email, String password) async {
    final response = await client.post('/auth/login', data: {
      "email": email,
      "password": password,
    });
    return response.data["token"];
  }

  Future<List<Car>> getCars() async {
    final response = await client.get("http://localhost:3001/cars");
    final cars = response.data["cars"];
    return (cars as List<dynamic>).map<Car>((e) => Car.fromJson(e)).toList();
  }
}
