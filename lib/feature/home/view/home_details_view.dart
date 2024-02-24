import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<bool>()

/// HomeDetailsView
class HomeDetailsView extends StatelessWidget {
  ///
  const HomeDetailsView({required this.details, super.key});

  ///
  final String details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeDetailsView'),
      ),
    );
  }
}
