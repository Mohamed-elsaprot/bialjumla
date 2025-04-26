import 'package:bialjumla/features/add_to_cart/view/add_to_cart.dart';
import 'package:bialjumla/features/category_items/view/category_items.dart';
import 'package:bialjumla/features/checkout/view/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../features/favoutites/view/favourites.dart';
import '../features/lang/view/lang.dart';
import '../features/navigation_screen/view/navigation_screen.dart';
import '../features/settings/view/widgets/content_body.dart';
import 'design/modal_material_with_page.dart';


abstract class AppRouter {
  static const String addToCart = '/addToCart';
  static const String checkout = '/checkout';
  static const String categoryItems = '/categoryItems';
  static const String favourites = '/favourites';
  static const String lang = '/lang';
  static const String contentScreen = '/contentScreen';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return ModalWithMaterialPage(child: const NavigationScreen());
      },
    ),
    GoRoute(
      path: addToCart,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return ModalWithMaterialPage(child:  AddToCart(index: state.extra as int,));
      },
    ),
    GoRoute(
      path: checkout,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return ModalWithMaterialPage(child: const Checkout());
      },
    ),
    GoRoute(
      path: categoryItems,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return ModalWithMaterialPage(child: const CategoryItems());
      },
    ),
    GoRoute(
      path: favourites,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return ModalWithMaterialPage(child: const Favourites());
      },
    ),
    GoRoute(
      path: lang,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return ModalWithMaterialPage(child: const Lang());
      },
    ),
    GoRoute(
      path: contentScreen,
      pageBuilder: (BuildContext context, GoRouterState state) {
        Map map = state.extra as Map;
        return ModalWithMaterialPage(child: ContentScreen(content:   map['content'], title: map['title'],));
      },
    ),
  ]);
}
