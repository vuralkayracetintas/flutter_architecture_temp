import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Make a adaptive view only tablet and phone platforms
final class AdaptPhoneView extends StatelessWidget {
  /// Define your custom widget for only tablet and phone platform
  const AdaptPhoneView({
    required this.phone,
    required this.tablet,
    super.key,
  });

  /// mobile Widget
  final Widget phone;

  /// tablet Widget
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;

    // return Container();
    return tablet;
  }
}
