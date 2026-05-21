import 'package:e301_login/providers/auth_provider.dart';
import 'package:e301_login/ui/views/analytic_view.dart';
import 'package:e301_login/ui/views/campaign_view.dart';
import 'package:e301_login/ui/views/categories_view.dart';
import 'package:e301_login/ui/views/customers_view.dart';
import 'package:e301_login/ui/views/dashboard_view.dart';
import 'package:e301_login/ui/views/discounts_view.dart';
import 'package:e301_login/ui/views/icons_views.dart';
import 'package:e301_login/ui/views/login_view.dart';
import 'package:e301_login/ui/views/marketing_view.dart';
import 'package:e301_login/ui/views/products_view.dart';
import 'package:e301_login/ui/views/black_view.dart'; 
import 'package:e301_login/ui/views/nosotros_view.dart';
import 'package:e301_login/ui/views/menu_view.dart';
import 'package:e301_login/ui/views/promociones_view.dart';
import 'package:e301_login/ui/views/galeria_view.dart';
import 'package:e301_login/ui/views/pedidos_view.dart';
import 'package:e301_login/ui/views/sucursales_view.dart';
import 'package:e301_login/ui/views/contacto_view.dart';// arriba con los imports
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return DashboardView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler icons = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return IconsViews();
      } else {
        return LoginView();
      }
    },
  );

  static Handler analytic = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return AnalyticView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler categories = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return CategoriesView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler products = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return ProductsView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler discounts = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return DiscountsView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler customers = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return CustomersView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler marketing = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return MarketingView();
      } else {
        return LoginView();
      }
    },
  );
static Handler black = Handler(
  handlerFunc: (context, params) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.authenticated) {
      return BlackView();
    } else {
      return LoginView();
    }
  },
);
  static Handler campaign = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return CampaignView();
      } else {
        return LoginView();
      }
    },
  );
   static Handler nosotros = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return NosotrosView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler menu = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return MenuView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler promociones = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return PromocionesView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler galeria = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return GaleriaView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler pedidos = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return PedidosView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler sucursales = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return SucursalesView();
      } else {
        return LoginView();
      }
    },
  );

  static Handler contacto = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return ContactoView();
      } else {
        return LoginView();
      }
    },
  );
}