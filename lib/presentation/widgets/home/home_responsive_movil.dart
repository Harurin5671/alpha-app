import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:beta_app/presentation/presentation.dart';

class HomeResponsiveMovil extends StatelessWidget {
  const HomeResponsiveMovil({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNavigationBloc(),
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
              builder: (context, state) {
                return IndexedStack(
                  index: state.currentIndex,
                  children: const [
                    HomeTab(),
                    ProfileTab(),
                  ],
                );
              },
            ),
          ),
          BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
            builder: (context, state) {
              return BottomNavigationBar(
                currentIndex: state.currentIndex,
                onTap: (index) {
                  context
                      .read<HomeNavigationBloc>()
                      .add(ChangeIndexEvent(index));
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Inicio',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    label: 'Perfil',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
// // import 'package:flutter/material.dart';

// // class HomeResponsiveMovil extends StatefulWidget {
// //   const HomeResponsiveMovil({super.key});

// //   @override
// //   State<HomeResponsiveMovil> createState() => _HomeResponsiveMovilState();
// // }

// // class _HomeResponsiveMovilState extends State<HomeResponsiveMovil> {
// //   int _currentIndex = 0; // Índice actual del BottomNavigationBar
// //   final PageController _pageController = PageController(); // Controlador para las páginas

// //   @override
// //   void dispose() {
// //     _pageController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: [
// //         Column(
// //           children: [
// //             Expanded(
// //               child: PageView(
// //                 controller: _pageController,
// //                 onPageChanged: (index) {
// //                   setState(() {
// //                     _currentIndex = index; // Actualiza el índice actual
// //                   });
// //                 },
// //                 children: const [
// //                   Center(child: Text("Contenido Inicio")),
// //                   Center(child: Text("Contenido Buscar")),
// //                   Center(child: Text("Contenido Ajustes")),
// //                   Center(child: Text('Contenido prueba1'),),
// //                   Center(child: Text('Contenido prueba2'),),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //         // Custom Tab Bar
// //         Positioned(
// //           bottom: 16, // Posiciona el TabBar personalizado
// //           left: 16,
// //           right: 16,
// //           child: Container(
// //             height: 70,
// //             decoration: BoxDecoration(
// //               color: Colors.white,
// //               borderRadius: BorderRadius.circular(24),
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: Colors.black.withValues(alpha: 0.1),
// //                   blurRadius: 8,
// //                   offset: const Offset(0, 4),
// //                 ),
// //               ],
// //             ),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// //               children: [
// //                 _buildTabItem(
// //                   index: 0,
// //                   icon: Icons.home,
// //                   label: "Inicio",
// //                 ),
// //                 _buildTabItem(
// //                   index: 1,
// //                   icon: Icons.search,
// //                   label: "Buscar",
// //                 ),
// //                 _buildTabItem(
// //                   index: 2,
// //                   icon: Icons.settings,
// //                   label: "Ajustes",
// //                 ),
// //                 _buildTabItem(
// //                   index: 3,
// //                   icon: Icons.settings_Bluetooth_outlined,
// //                   label: "Ajustes",
// //                 ),
// //                 _buildTabItem(
// //                   index: 4,
// //                   icon: Icons.accessibility_new_rounded,
// //                   label: "Ajustes",
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   Widget _buildTabItem({required int index, required IconData icon, required String label}) {
// //     final isSelected = _currentIndex == index;
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           _currentIndex = index;
// //         });
// //         _pageController.jumpToPage(index);
// //       },
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Icon(
// //             icon,
// //             color: isSelected ? Colors.blue : Colors.grey,
// //             size: isSelected ? 28 : 24,
// //           ),
// //           const SizedBox(height: 4),
// //           Text(
// //             label,
// //             style: TextStyle(
// //               color: isSelected ? Colors.blue : Colors.grey,
// //               fontSize: isSelected ? 12 : 10,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
