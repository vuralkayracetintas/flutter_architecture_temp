import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_architecture/product/init/config/app_environment.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

/// This class is used the initialize the application process.
final class ApplicationInitialize {
  // /// its only use for setup business
  // const ApplicationInitialize.setup();

  /// Project first basic required initialized
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded(_initialize, (error, stack) {
      Logger().e(error);
    });
  }

  /// This method is used to initialize the application process.
  static Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();

    /// EasyLocalization console message
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    /// Read system data
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      /// crashlytics log insert here
      /// custom service or custom logger insert here

      Logger().e(details.exceptionAsString());
    };

    AppEnvironment.general();
  }
}
