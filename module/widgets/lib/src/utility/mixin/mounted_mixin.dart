import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Stateful widget mixin to handle loading state
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  /// your mounted state
  Future<void> safeOperation(AsyncCallback callBack) async {
    if (!mounted) return;
    await callBack.call();
  }
}
