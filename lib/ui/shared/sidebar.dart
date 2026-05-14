import 'package:e301_login/providers/auth_provider.dart';
import 'package:e301_login/providers/sidemenu_provider.dart';
import 'package:e301_login/router/router.dart';
import 'package:e301_login/services/navigation_service.dart';
import 'package:e301_login/ui/shared/widgets/logo.dart';
import 'package:e301_login/ui/shared/widgets/menu_item.dart';
import 'package:e301_login/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  void navigateTo(String routeName) {
    NavigationService.navigationTo(routeName);
    SidemenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Logo(),
          SizedBox(height: 50),
          TextSeparator(text: 'main'),
          MenuItem(
            text: 'Dashboard',
            icon: Icons.compass_calibration_outlined,
            onPressed: () => navigateTo(Flurorouter.dashboardRoute),
          ),
          MenuItem(
            text: 'Analytic',
            icon: Icons.show_chart_outlined,
            onPressed: () => navigateTo(Flurorouter.analyticRoute),
          ),
          MenuItem(
            text: 'Categories',
            icon: Icons.layers_clear_outlined,
            onPressed: () => navigateTo(Flurorouter.categoriesRoute),
          ),
          MenuItem(
            text: 'Products',
            icon: Icons.dashboard_outlined,
            onPressed: () => navigateTo(Flurorouter.productsRoute),
          ),
          MenuItem(
            text: 'Discounts',
            icon: Icons.attach_money_outlined,
            onPressed: () => navigateTo(Flurorouter.discountsRoute),
          ),
          MenuItem(
            text: 'Customers',
            icon: Icons.people_alt_outlined,
            onPressed: () => navigateTo(Flurorouter.customersRoute),
          ),
          SizedBox(height: 30),
          TextSeparator(text: 'UI Elements'),
          MenuItem(
            text: 'Icons',
            icon: Icons.list_alt_outlined,
            onPressed: () => navigateTo(Flurorouter.iconsRoute),
          ),
          MenuItem(
            text: 'Marketing',
            icon: Icons.mark_email_read_outlined,
            onPressed: () => navigateTo(Flurorouter.marketingRoute),
          ),
          MenuItem(
            text: 'Campeign',
            icon: Icons.note_add_outlined,
            onPressed: () => navigateTo(Flurorouter.campaignRoute),
          ),
          // ✅ Correcto
MenuItem(
  text: 'Black',
  icon: Icons.post_add_outlined,
  onPressed: () => navigateTo(Flurorouter.blackRoute), // <-- así debe ser
),
          MenuItem(
            text: 'Exit',
            icon: Icons.exit_to_app_outlined,
            onPressed: () {
              authProvider.logout();
              navigateTo(Flurorouter.loginRoute);
            },
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xff092044), Color(0xff092042)]),
        boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10)],
      );
}