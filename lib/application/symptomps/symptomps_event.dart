part of 'symptomps_bloc.dart';

@freezed
abstract class SymptompsEvent with _$SymptompsEvent {
  const factory SymptompsEvent.addSymptom(SymptomType symptomType) =
      _AddSymptom;
  const factory SymptompsEvent.changeCurrentIndex(int index) =
      _ChangeCurrentIndex;
  const factory SymptompsEvent.changeSymptomLevel(int level) =
      _ChangeSymptomLevel;
  const factory SymptompsEvent.updateSymptoms() = _UpdateSymptoms;
}
