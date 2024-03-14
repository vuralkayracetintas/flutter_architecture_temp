import 'package:flutter/widgets.dart';

/// Stateful widget mixin to handle loading state
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  /// Get loading state
  bool get isLoading => _isLoadingNotifier.value;

  /// Get loading state notifier
  ValueNotifier<bool> get isLoadingNotifier => _isLoadingNotifier;

  /// Change loading state
  /// If user want force, give a bool value
  void changeLoading({bool? isLoading}) {
    if (isLoading != null) _isLoadingNotifier.value = isLoading;
    _isLoadingNotifier.value = !_isLoadingNotifier.value;
  }
}
