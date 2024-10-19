import 'package:flutter/material.dart';

class Responsive__Size extends StatelessWidget {
  ///medidas de pantallas
  final Widget movil;
  final Widget? tablet;
  final Widget web;

  const Responsive__Size(
      {super.key,
      required this.movil,
      required this.tablet,
      required this.web});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final mobileBreakpoint = 500;
    final tabletBreakpoint = 1200;
    if (screenWidth < mobileBreakpoint) {
      return movil;
    } else if (tablet != null &&
        screenWidth >= mobileBreakpoint &&
        screenWidth < tabletBreakpoint) {
      return tablet!;
    } else {
      return web;
    }
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }
}
