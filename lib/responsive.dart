import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget? tablet;
  final Widget? mobilelarge;

  const Responsive(
      {Key? key,
      required this.desktop,
      required this.mobile,
      this.tablet,
      this.mobilelarge})
      : super(key: key);
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobilelarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobilelarge != null) {
      return mobilelarge!;
    } else
      return mobile;
  }
}
