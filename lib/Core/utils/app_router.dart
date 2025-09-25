import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/Features/home/presentation/manager/cubit/cart_cubit.dart';
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
    GoRoute(
      path: kHomeView,
      builder: (context, state) => BlocProvider(
        create: (context) => CartCubit(),
        child: HomeView(),
      ),
    )
  ]);
}
