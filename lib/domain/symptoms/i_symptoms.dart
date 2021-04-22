import 'package:dartz/dartz.dart';
import 'package:zealth_assignment/domain/enums/symptoms.dart';

abstract class ISymptoms {
  Future<Either<String, Unit>> postSymptoms({
    List<SymptomType> symptomTypeList,
    List<int> levelList,
  });
}
