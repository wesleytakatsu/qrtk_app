import 'package:go_router/go_router.dart';

// user
import 'package:qrtk_app/pages/user/login.dart';
import 'package:qrtk_app/pages/user/register.dart';

// home
import 'package:qrtk_app/pages/home/welcome.dart';

// groups

// settings

// qrtk
// import 'package:qrtk_app/pages/qrtk/qrcode_scan_result.dart';

// business


final routes = GoRouter(
  initialLocation: '/home/welcome',
  // refreshListenable: getIt<AuthService>(),
  // redirect: (state) {
  //   final isAuthenticated = getIt<AuthService>().isAuthenticated;
  //   final isLoginRoute = state.subloc == '/login';

  //   if (!isAuthenticated) {
  //     return isLoginRoute ? null : '/login';
  //   }

  //   if (isLoginRoute) return '/users';

  //   return null;
  // },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeWelcome(),
    ),
        GoRoute(
      path: '/home/welcome',
      builder: (context, state) => const HomeWelcome(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterPage(),
    ),
    // GoRoute(
    //   path: '/users',
    //   builder: (context, state) => const UsersPage(),
    // ),
    // GoRoute(
    //   path: '/users/add',
    //   // builder: (context, state) => const AddUserPage(),
    //   pageBuilder: (context, state) => const MaterialPage(
    //     child: AddUserPage(),
    //     fullscreenDialog: true,
    //   ),
    // ),
    // GoRoute(
    //   path: '/users/:userId',
    //   builder: (context, state) {
    //     final user = getIt<UsersRepository>().users.firstWhere(
    //           (user) => user.id == state.params['userId']!,
    //         );

    //     return DetailUserPage(user: user);
    //   },
    // ),
  ],
);