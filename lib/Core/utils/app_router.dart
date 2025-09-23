import 'package:fruit_app/Features/home/presentation/views/home_view.dart';
import 'package:fruit_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSplashView = '/';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(path: kHomeView,builder: (context, state) => HomeView(),)
  ]);
}
