import 'package:e301_login/providers/sidemenu_provider.dart';
import 'package:e301_login/ui/shared/navbar.dart';
import 'package:e301_login/ui/shared/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;
  const DashboardLayout({super.key, required this.child});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SidemenuProvider.menuController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff111111),
      body: Stack(
        children: [
          Row(
            children: [
              if (size.width >= 700) Sidebar(),
              Expanded(
                child: Column(
                  children: [
                    Navbar(),
                    SizedBox(height: 10), // Agrega un espacio entre la Navbar y el contenido
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: widget.child,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (size.width < 700)
            AnimatedBuilder(
              animation: SidemenuProvider.menuController,
              builder: (context, _) => Stack(
                children: [
                  Transform.translate(
                    offset: Offset(SidemenuProvider.movement.value, 0),
                    child: Sidebar(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}