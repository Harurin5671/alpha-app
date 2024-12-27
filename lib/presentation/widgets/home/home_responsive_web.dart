import 'package:flutter/material.dart';

import 'package:beta_app/presentation/presentation.dart';

class HomeResponsiveWeb extends StatefulWidget {
  const HomeResponsiveWeb({super.key});

  @override
  State<HomeResponsiveWeb> createState() => _HomeResponsiveWebState();
}

class _HomeResponsiveWebState extends State<HomeResponsiveWeb> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text("Inicio"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: Text("Perfil"),
            ),
          ],
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: _getContent(_selectedIndex),
        ),
      ],
    );
  }

  Widget _getContent(int index) {
    switch (index) {
      case 0:
        return const HomeTab();
      case 1:
        return const ProfileTab();
      default:
        return const Center(child: Text("Página no encontrada"));
    }
  }
}
