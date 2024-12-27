import 'package:flutter/material.dart';

import 'package:beta_app/configs/configs.dart';
import 'package:beta_app/presentation/widgets/widgets.dart';

class PlatformLayout extends StatelessWidget {
  final double appBarHeight;
  final Widget? appBarTitle;
  final List<Widget>? appBarActions;
  final Color? backgroundAppBarColor;
  final Color? backgroundScaffoldColor;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget mobileContent;
  final Widget webContent;
  const PlatformLayout({
    super.key,
    this.appBarHeight = 0,
    this.appBarTitle,
    this.appBarActions,
    this.backgroundAppBarColor,
    this.backgroundScaffoldColor,
    this.drawer,
    this.floatingActionButton,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.endFloat,
    required this.mobileContent,
    required this.webContent,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveConfig.isWeb(context)) {
      return ResponsiveScaffold(
          appBarHeight: appBarHeight,
          appBarTitle: appBarTitle,
          appBarActions: appBarActions,
          backgroundAppBarColor: backgroundAppBarColor,
          backgroundScaffoldColor: backgroundScaffoldColor,
          drawer: drawer,
          floatingActionButton: floatingActionButton,
          child: webContent);
    }

    return ResponsiveScaffold(
      appBarHeight: appBarHeight,
      appBarTitle: appBarTitle,
      appBarActions: appBarActions,
      backgroundAppBarColor: backgroundAppBarColor,
      backgroundScaffoldColor: backgroundScaffoldColor,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      child: mobileContent,
    );
  }
}
