import 'package:flutter/material.dart';
import 'package:zi_dev_web/responsive/responsive.dart';

/// Extension to simplify responsive design checks
extension ResponsiveContext on BuildContext {
  /// Check if current screen is mobile (< 600px)
  bool get isMobile => Responsive.isMobile(this);

  /// Check if current screen is tablet (600px - 999px)
  bool get isTablet => Responsive.isTablet(this);

  /// Check if current screen is desktop (>= 1000px)
  bool get isDesktop => Responsive.isDesktop(this);

  /// Get screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Get screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Get screen size
  Size get screenSize => MediaQuery.of(this).size;
}

/// Helper class for responsive sizing
class ResponsiveSizing {
  /// Get responsive image height based on screen size
  static double imageHeight(BuildContext context, {
    double mobile = 150,
    double tablet = 200,
    double desktop = 250,
  }) {
    if (context.isMobile) return mobile;
    if (context.isTablet) return tablet;
    return desktop;
  }

  /// Get responsive grid column count
  static int gridColumns(BuildContext context, {
    int mobile = 2,
    int tablet = 3,
    int desktop = 4,
  }) {
    if (context.isMobile) return mobile;
    if (context.isTablet) return tablet;
    return desktop;
  }

  /// Get responsive padding
  static double padding(BuildContext context, {
    double mobile = 16,
    double tablet = 24,
    double desktop = 32,
  }) {
    if (context.isMobile) return mobile;
    if (context.isTablet) return tablet;
    return desktop;
  }
}
