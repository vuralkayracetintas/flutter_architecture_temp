import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// Question Answer Class
final class QuestionAnswer {
  QuestionAnswer({required this.response});

  ///Answer text
  final String response;
}

/// Show a Question dialog
final class QuestionDialog extends StatefulWidget {
  /// Const Question dialog
  const QuestionDialog({required this.title, super.key});

  /// Alert dialog title
  final String title;

  /// Show the dialog Question
  /// This will always return => true
  static Future<QuestionAnswer?> show(
    BuildContext context,
    String title,
  ) async {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) Navigator.of(context).pop(null);
            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
