import 'package:auto_route/auto_route_annotations.dart';
import 'package:zealth_assignment/presentation/base/base.dart';
import 'package:zealth_assignment/presentation/base/symptomps/pages/symptomp_details.dart';
import 'package:zealth_assignment/presentation/core/pages/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: BasePage),
      MaterialRoute(page: SymptompsDetailsPage),
    ])
class $Router {}
