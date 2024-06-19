import 'package:go_router/go_router.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/pages/products_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => ProductsPage(),
    )
  ],
  initialLocation: "/",
);
