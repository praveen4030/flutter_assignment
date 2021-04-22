// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/enums/symptoms.dart';
import '../base/base.dart';
import '../base/symptomps/pages/symptomp_details.dart';
import '../core/pages/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String basePage = '/base-page';
  static const String symptompsDetailsPage = '/symptomps-details-page';
  static const all = <String>{
    splashPage,
    basePage,
    symptompsDetailsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.basePage, page: BasePage),
    RouteDef(Routes.symptompsDetailsPage, page: SymptompsDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    BasePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BasePage(),
        settings: data,
      );
    },
    SymptompsDetailsPage: (data) {
      final args = data.getArgs<SymptompsDetailsPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SymptompsDetailsPage(
          key: args.key,
          symptomType: args.symptomType,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushBasePage() => push<dynamic>(Routes.basePage);

  Future<dynamic> pushSymptompsDetailsPage({
    Key key,
    @required SymptomType symptomType,
  }) =>
      push<dynamic>(
        Routes.symptompsDetailsPage,
        arguments:
            SymptompsDetailsPageArguments(key: key, symptomType: symptomType),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SymptompsDetailsPage arguments holder class
class SymptompsDetailsPageArguments {
  final Key key;
  final SymptomType symptomType;
  SymptompsDetailsPageArguments({this.key, @required this.symptomType});
}
