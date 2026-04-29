import 'package:docdoc/features/all_doctors/presentation/screen/all_doc_screen.dart';
import 'package:docdoc/features/auth/presentation/screens/login_screen.dart';
import 'package:docdoc/routing/routes.dart';
import 'package:flutter/material.dart';

import '../features/auth/presentation/screens/signup_screen.dart';
import '../features/home/presentation/screen/home_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

    case Routes.home:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
      case Routes.allDocs:
        return MaterialPageRoute(
          builder: (_) => const AllDocScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Route Not Found'),
            ),
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        );
    }
  }
}