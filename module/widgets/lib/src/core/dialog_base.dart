import 'package:flutter/material.dart';

final class DialogBase {
  DialogBase._();



/// Show a general dialog with
/// [builder] for the dialog
/// This will always return true
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) {
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: false,
      useSafeArea: false,
    );
  }
}
