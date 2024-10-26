import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;
  Responsive(this.context);

  static const int mobilePortraitBreakpoint = 480;
  static const int mobileLandscapeBreakpoint = 768;
  static const int tabletPortraitBreakpoint = 834;
  static const int tabletLandscapeBreakpoint = 1024;
  static const int laptopBreakpoint = 1440;

  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;
  bool get isPortrait => MediaQuery.of(context).orientation == Orientation.portrait;

  bool get isMobilePortrait => screenWidth < mobilePortraitBreakpoint;
  bool get isMobileLandscape => screenWidth >= mobilePortraitBreakpoint && screenWidth < mobileLandscapeBreakpoint;
  bool get isTabletPortrait => screenWidth >= mobileLandscapeBreakpoint && screenWidth < tabletPortraitBreakpoint;
  bool get isTabletLandscape => screenWidth >= tabletPortraitBreakpoint && screenWidth < tabletLandscapeBreakpoint;
  bool get isLaptop => screenWidth >= tabletLandscapeBreakpoint && screenWidth < laptopBreakpoint;
  bool get isDesktop => screenWidth >= laptopBreakpoint;

  double responsiveFontSize(double fontSize) {
    if (isMobilePortrait) return fontSize;
    if (isMobileLandscape) return fontSize * 1.1;
    if (isTabletPortrait) return fontSize * 1.2;
    if (isTabletLandscape) return fontSize * 1.3;
    if (isLaptop) return fontSize * 1.4;
    return fontSize * 1.5;
  }

  double responsiveWidth(double width) {
    if (isMobilePortrait) return width;
    if (isMobileLandscape) return width * 1.1;
    if (isTabletPortrait) return width * 1.2;
    if (isTabletLandscape) return width * 1.3;
    if (isLaptop) return width * 1.4;
    return width * 1.5;
  }

  double responsiveHeight(double height) {
    if (isMobilePortrait) return height;
    if (isMobileLandscape) return height * 1.1;
    if (isTabletPortrait) return height * 1.2;
    if (isTabletLandscape) return height * 1.3;
    if (isLaptop) return height * 1.4;
    return height * 1.5;
  }
}
