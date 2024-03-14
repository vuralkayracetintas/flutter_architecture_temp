// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_architecture/product/widget/button/normal_button.dart';
import 'package:widgets/widgets.dart';

/// Dialog Button Widget
class DialogNormalButton extends StatelessWidget {
  /// Dialog button const
  const DialogNormalButton({
    required this.onComplete,
    super.key,
  });

  /// Dialog button onComplete function
  final ValueChanged<bool> onComplete;
  @override
  Widget build(BuildContext context) {
    return NormalButton(
      title: 'Dialog Normal button',
      onPressed: () async {
        final response = await SuccessDialog.show(context, 'title');
        onComplete.call(response);
      },
    );
  }
}
