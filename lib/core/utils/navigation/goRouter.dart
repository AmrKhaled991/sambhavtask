import 'package:go_router/go_router.dart';
import 'package:sambhavtask/features/Slide_details_view1/presentation/view/slide_details_view1.dart';
import 'package:sambhavtask/features/Slide_details_view2/presentation/view/slide_details_view2.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/category_details_screen.dart';
import 'package:sambhavtask/features/most_popular_products/presentation/view/most_popular_products.dart';
import 'package:sambhavtask/features/product_details_screen/presentation/view/product_details_screen.dart';
import 'package:sambhavtask/features/search_screen/presentation/view/search_screen.dart';
import 'package:sambhavtask/features/see_all_categories/presentation/view/all_categories_screen.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/shop_screen.dart';

class AppRouter {
  static const String shopeScreen = '/shopeScreen';
  static const String search = '/search';
  static const String slideDetails1 = '/slideDetails1';
  static const String slideDetails2 = '/slideDetails2';
  static const String categoryDetails = '/categoryDetails';
  static const String allCategories = '/allCategories';
  static const String mostPopularProduct = '/mostPopularProduct';
  static const String productDetails = '/productDetails';

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: shopeScreen,
        builder: (context, state) => const ShopScreen(),
      ),
      GoRoute(path: search, builder: (context, state) => const SearchScreen()),
      GoRoute(
        path: slideDetails1,
        builder: (context, state) => const SlideDetailsView1(),
      ),
      GoRoute(
        path: slideDetails2,
        builder: (context, state) => const SlideDetailsView2(),
      ),
      GoRoute(
        path: categoryDetails,
        builder: (context, state) => const CategoryDetailsScreen(),
      ),
      GoRoute(
        path: allCategories,
        builder: (context, state) => CategoriesScreen(),
      ),
      GoRoute(
        path: mostPopularProduct,
        builder: (context, state) => const MostPopularProducts(),
      ),
      GoRoute(
        path: productDetails,
        builder: (context, state) => const ProductDetailsScreen(),
      ),
    ],
  );
}
