import 'package:flutter/material.dart';

class ResponsiveScaffold extends StatelessWidget {
  final double appBarHeight;
  final Widget? appBarTitle;
  final List<Widget>? appBarActions;
  final Color? backgroundAppBarColor;
  final Color? backgroundScaffoldColor;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget child;

  const ResponsiveScaffold({
    super.key,
    this.appBarHeight = 0,
    this.appBarTitle,
    this.appBarActions,
    this.backgroundAppBarColor,
    this.backgroundScaffoldColor,
    this.drawer,
    this.floatingActionButton,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.endFloat,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: AppBar(
            backgroundColor: backgroundAppBarColor,
            title: appBarTitle,
            actions: appBarActions,
            iconTheme: IconThemeData(
              color: isDarkTheme ?  Color(0xffF1F4F6) : Color(0xff33384B),
            ),
          ),
        ),
        backgroundColor: backgroundScaffoldColor,
        body: SafeArea(
          child: child,
        ),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}
