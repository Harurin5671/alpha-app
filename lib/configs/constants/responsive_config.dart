import 'package:flutter/material.dart';

class DeviceBreakpoints {
  static const double mobile = 600.0;
  static const double tablet = 1200.0;
  static const double web = 1920.0;
  static const double tv = 2560.0;
}

class ResponsiveConfig {
  ///Determina si el dispositivo es un móvil
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < DeviceBreakpoints.mobile;
  }

  ///Determina si el dispositivo es una tablet
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= DeviceBreakpoints.mobile &&
        MediaQuery.of(context).size.width < DeviceBreakpoints.tablet;
  }

  ///Determina si el dispositivo es una web
  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= DeviceBreakpoints.tablet &&
        MediaQuery.of(context).size.width < DeviceBreakpoints.web;
  }

  ///Determina si el dispositivo es una TV
  static bool isTV(BuildContext context) {
    return MediaQuery.of(context).size.width >= DeviceBreakpoints.web &&
        MediaQuery.of(context).size.width < DeviceBreakpoints.tv;
  }
}
