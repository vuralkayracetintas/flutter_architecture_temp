import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/product/widget/button/normal_button.dart';
import 'package:widgets/widgets.dart';

part 'custom_login_button_mixin.dart';

///Custom Login Button Widget
final class CustomLoginButton extends StatefulWidget {
  ///Custom Login Button const
  const CustomLoginButton({
    required this.onOperation,
    super.key,
  });

  ///
  final AsyncValueGetter<bool> onOperation;
  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton>
    with MountedMixin, _CustomLoginButtonMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotifier,
      builder: (BuildContext context, bool value, Widget? child) {
        if (value) return const SizedBox();
        return NormalButton(
          title: 'Login',
          onPressed: () async {
            await _onPressed(context);
          },
        );
      },
    );
  }
}
