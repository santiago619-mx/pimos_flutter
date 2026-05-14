import 'package:e301_login/router/admin_handlers.dart';
import 'package:e301_login/router/dashboard_handlers.dart';
import 'package:e301_login/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';
  // auth routes
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/register';
  // dashboard routes
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
    router.define(analyticRoute,
        handler: DashboardHandlers.analytic, transitionType: TransitionType.none);
    router.define(categoriesRoute,
        handler: DashboardHandlers.categories, transitionType: TransitionType.none);
    router.define(productsRoute,
        handler: DashboardHandlers.products, transitionType: TransitionType.none);
    router.define(discountsRoute,
        handler: DashboardHandlers.discounts, transitionType: TransitionType.none);
    router.define(customersRoute,
        handler: DashboardHandlers.customers, transitionType: TransitionType.none);
    router.define(marketingRoute,
        handler: DashboardHandlers.marketing, transitionType: TransitionType.none);
    router.define(campaignRoute,
        handler: DashboardHandlers.campaign, transitionType: TransitionType.none);
router.define(blackRoute,
    handler: DashboardHandlers.black, transitionType: TransitionType.none);
    // 404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}