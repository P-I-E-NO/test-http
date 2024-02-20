import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_http/api.dart';

class AppState extends ChangeNotifier {
  late Dio httpClient;
  late bool isLogged;
  late Api api;

  AppState() {
    isLogged = false;
    httpClient = Dio(BaseOptions(baseUrl: 'http://192.168.1.108:3000'));
    api = Api(client: httpClient);
  }

  void setToken(String token) {
    httpClient.options.headers.addAll({"Authorization": "Bearer $token"});
  }

  void setLogged(bool value) {
    isLogged = value;
    notifyListeners();
  }

  Future<bool> getIfUserIsLogged() async {
    try {
      await httpClient.get('/users/auth');
      return true;
    } on DioException catch (_) {
      return false;
    }
  }
}
