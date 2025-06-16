import 'package:flutter/material.dart';
import 'package:streamer_chat/auth/register_screen.dart';
import 'package:streamer_chat/views/select_user.dart';
import '../auth/login_screen.dart';

class AppRoutes {
  static const String selectUser = '/';
  static const String login = '/login';
  static const String register = '/register';

  static final Map<String, WidgetBuilder> routes = {
    selectUser: (_) => SelectUser(),
    login: (_) => const LoginScreen(),
    register: (_) => const RegisterScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final builder = routes[settings.name];
    if (builder != null) {
      return MaterialPageRoute(builder: builder, settings: settings);
    }

    return MaterialPageRoute(
      builder:
          (_) => const Scaffold(body: Center(child: Text('no route found'))),
    );
  }
}
