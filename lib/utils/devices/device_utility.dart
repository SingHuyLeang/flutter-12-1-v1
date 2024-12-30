import 'package:flutter/material.dart';

/// <b>This class is used to represent widget layer</b>
class Resize {
  final BuildContext context;

  Resize(this.context);

  /// Scales the given width `w` based on the screen width
  double width(double w) {
    final screenWidth = MediaQuery.of(context).size.width;
    const designWidth = 360.0; // Reference design width
    return (w / designWidth) * screenWidth;
  }

  /// Scales the given height `h` based on the screen height
  double height(double h) {
    final screenHeight = MediaQuery.of(context).size.height;
    const designHeight = 640.0; // Reference design height
    return (h / designHeight) * screenHeight;
  }
}
