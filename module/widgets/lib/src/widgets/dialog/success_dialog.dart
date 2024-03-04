import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// Show a success dialog
final class SuccessDialog extends StatelessWidget {
  /// Const success dialog
  const SuccessDialog({required this.title, super.key});

  /// Alert dialog title
  final String title;

  /// Show the dialog success
  /// This will always return => true
  static Future<bool> show(BuildContext context, String title) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
