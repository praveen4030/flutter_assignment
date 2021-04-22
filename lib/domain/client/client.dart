import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class Client {
  static const String BASE_URL = "http://10.0.2.2:8080/";

  Dio dioClient = Dio(BaseOptions(
    baseUrl: BASE_URL,
    headers: {
      'Accept': "application/json",
    },
  ))
    ..interceptors.add(LogInterceptor());

  Client() {}
}
