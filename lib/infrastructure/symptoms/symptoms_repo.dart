import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:zealth_assignment/domain/client/client.dart';
import 'package:zealth_assignment/domain/enums/symptoms.dart';
import 'package:zealth_assignment/domain/symptoms/i_symptoms.dart';

@LazySingleton(as: ISymptoms)
class SymptomsRepo implements ISymptoms {
  final Client client;
  SymptomsRepo(this.client);

  @override
  Future<Either<String, Unit>> postSymptoms({
    List<SymptomType> symptomTypeList,
    List<int> levelList,
  }) async {
    try {
      Map<String, int> map = {};
      for (int i = 0; i < symptomTypeList.length; i++) {
        map.putIfAbsent(
            symptomTypeList[i].toString().split(".").last, () => levelList[i]);
      }
      final FormData formData = FormData.fromMap({
        "symptoms": map,
        "user-id": 123,
      });
      final Response response = await client.dioClient.post(
        '',
        data: formData,
      );
      return right(unit);
    } on DioError catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }
}
