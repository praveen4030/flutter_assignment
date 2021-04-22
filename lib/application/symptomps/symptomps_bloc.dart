import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zealth_assignment/domain/enums/symptoms.dart';
import 'package:zealth_assignment/domain/symptoms/i_symptoms.dart';

part 'symptomps_event.dart';
part 'symptomps_state.dart';
part 'symptomps_bloc.freezed.dart';

@injectable
class SymptompsBloc extends Bloc<SymptompsEvent, SymptompsState> {
  final ISymptoms iSymptoms;
  SymptompsBloc(this.iSymptoms) : super(SymptompsState.initial());

  @override
  Stream<SymptompsState> mapEventToState(
    SymptompsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      addSymptom: (e) async* {
        List<SymptomType> list = List.from(state.symptomsList);
        if (!list.contains(e.symptomType)) {
          list.add(e.symptomType);
          state.symptomLevelList.add(0);

          yield state.copyWith(
            symptomsList: list,
          );
        } else {
          Fluttertoast.showToast(msg: "Already added");
        }
      },
      changeCurrentIndex: (e) async* {
        yield state.copyWith(
          currentIndex: e.index,
        );
      },
      changeSymptomLevel: (e) async* {
        List<int> list = List.from(state.symptomLevelList);
        list.insert(state.currentIndex, e.level);

        yield state.copyWith(
          symptomLevelList: list,
        );
      },
      updateSymptoms: (e) async* {
        final opt = await iSymptoms.postSymptoms(
          symptomTypeList: state.symptomsList,
          levelList: state.symptomLevelList,
        );
      },
    );
  }
}
