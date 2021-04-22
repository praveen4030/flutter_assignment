part of 'symptomps_bloc.dart';

@freezed
abstract class SymptompsState with _$SymptompsState {
  const factory SymptompsState({
    @required List<SymptomType> symptomsList,
    @required int currentIndex,
    @required List<int> symptomLevelList,
  }) = _SymptompsState;

  factory SymptompsState.initial() => SymptompsState(
        symptomsList: [],
        currentIndex: 0,
        symptomLevelList: [],
      );
}
