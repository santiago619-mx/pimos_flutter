import 'package:e301_login/router/admin_handlers.dart';
import 'package:e301_login/router/dashboard_handlers.dart';
import 'package:e301_login/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/register';
  static String dashboardRoute = '/dashboard';
  static String iconsRoute = '/dashboard/icons';
  static String analyticRoute = '/dashboard/analytic';
  static String categoriesRoute = '/dashboard/categories';
  static String productsRoute = '/dashboard/products';
  static String discountsRoute = '/dashboard/discounts';
  static String customersRoute = '/dashboard/customers';
  static String marketingRoute = '/dashboard/marketing';
  static String campaignRoute = '/dashboard/campaign';
  static String blackRoute = '/dashboard/black';
  static String nosotrosRoute = '/dashboard/nosotros';
  static String menuRoute = '/dashboard/menu';
  static String promocionesRoute = '/dashboard/promociones';
  static String galeriaRoute = '/dashboard/galeria';
  static String pedidosRoute = '/dashboard/pedidos';
  static String sucursalesRoute = '/dashboard/sucursales';
  static String contactoRoute = '/dashboard/contacto';

  static void configRoutes() {
    router.define(rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none);
    router.define(dashboardRoute,
        handler: DashboardHandlers.dashboard, transitionType: TransitionType.none);
    router.define(iconsRoute,
        handler: DashboardHandlers.icons, transitionType: TransitionType.none);
    router.define(blackRoute,
        handler: DashboardHandlers.black, transitionType: TransitionType.none);
    router.define(nosotrosRoute,
        handler: DashboardHandlers.nosotros, transitionType: TransitionType.none);
    router.define(menuRoute,
        handler: DashboardHandlers.menu, transitionType: TransitionType.none);
    router.define(promocionesRoute,
        handler: DashboardHandlers.promociones, transitionType: TransitionType.none);
    router.define(galeriaRoute,
        handler: DashboardHandlers.galeria, transitionType: TransitionType.none);
    router.define(pedidosRoute,
        handler: DashboardHandlers.pedidos, transitionType: TransitionType.none);
    router.define(sucursalesRoute,
        handler: DashboardHandlers.sucursales, transitionType: TransitionType.none);
    router.define(contactoRoute,
        handler: DashboardHandlers.contacto, transitionType: TransitionType.none);

    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}