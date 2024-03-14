import 'package:flutter/material.dart';
import 'package:flutter_architecture/product/utility/constants/enums/project_radius.dart';

/// NormalButton Widget radius is 20
class NormalButton extends StatelessWidget {
  /// NormalButton Const
  const NormalButton({required this.title, required this.onPressed, super.key});

  /// NormalButton Title
  final String title;

  /// NormalButton onPressed function
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      radius: ProjectRadius.medium.value,
      child: Text(title),
    );
  }
}
