import 'package:flutter/foundation.dart';
import 'package:flutter_architecture/product/init/config/app_configuration.dart';
import 'package:flutter_architecture/product/init/config/dev_env.dart';
import 'package:flutter_architecture/product/init/config/prod_env.dart';

/// Application environment manager class
final class AppEnvironment {
  /// Setup application environment
  AppEnvironment.setup(AppConfiguration config) {
    config = config;
  }

  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;
}

/// Get application environment items
enum AppEnvironmentItems {
  /// Network base url
  baseUrl,

  /// Google maps api key
  apiKey;

  /// Get application environment items value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironmentItems: $this not found, Error :  $e');
    }
  }
}
