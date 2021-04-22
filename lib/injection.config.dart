// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/symptomps/symptomps_bloc.dart' as _i6;
import 'domain/client/client.dart' as _i3;
import 'domain/symptoms/i_symptoms.dart' as _i4;
import 'infrastructure/symptoms/symptoms_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.Client>(() => _i3.Client());
  gh.lazySingleton<_i4.ISymptoms>(() => _i5.SymptomsRepo(get<_i3.Client>()));
  gh.factory<_i6.SymptompsBloc>(() => _i6.SymptompsBloc(get<_i4.ISymptoms>()));
  return get;
}
