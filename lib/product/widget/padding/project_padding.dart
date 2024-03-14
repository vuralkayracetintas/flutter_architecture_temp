import 'package:flutter/material.dart';

/// Project general padding size
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  /// All Padding

  /// [ ProjectPadding.allSmall ] is 10
  const ProjectPadding.allSmall() : super.all(10);

  /// [ ProjectPadding.allMedium ] is 20
  const ProjectPadding.allMedium() : super.all(20);

  /// [ ProjectPadding.allNormal ] is 30
  const ProjectPadding.allNormal() : super.all(30);

  /// [ ProjectPadding.allLarge ] is 40
  const ProjectPadding.allLarge() : super.all(40);
}
