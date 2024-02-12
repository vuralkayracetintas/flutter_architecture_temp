import 'package:flutter/material.dart';

// Project locale enum for operation and configuration
enum Locales {
  tr(Locale('tr', 'TR')),
  en(Locale('en', 'US'));

//Local value
  final Locale locale;
  const Locales(this.locale);

// project supported locales
  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
}
