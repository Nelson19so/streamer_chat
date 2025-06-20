import 'package:flutter/material.dart';
import 'package:streamer_chat/auth/register_screen.dart';
import 'package:streamer_chat/views/auth/advanced_option_screen.dart';
import 'package:streamer_chat/views/auth/select_user_screen.dart';
import 'package:streamer_chat/views/chennel/channel.dart';
import '../auth/login_screen.dart';

class AppRoutes {
  // entry level screen route
  static const String selectUser = '/';
  static const String advancedoption = '/advanced_option';

  // authentication route
  static const String login = '/login';
  static const String register = '/register';

  // chat route
  static const String channel = '/channel';

  static final Map<String, WidgetBuilder> routes = {
    // entry level screen route
    selectUser: (_) => SelectUser(),
    advancedoption: (_) => const AdvancedOptionScreen(),

    // authentication screen route
    login: (_) => const LoginScreen(),
    register: (_) => const RegisterScreen(),
    // chat route
    channel: (_) => const Channel(),
  };

  // handles route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final builder = routes[settings.name];
    // if route exist/is not null
    if (builder != null) {
      return MaterialPageRoute(builder: builder, settings: settings);
    }

    // else
    return MaterialPageRoute(
      builder:
          (_) => const Scaffold(body: Center(child: Text('no route found'))),
    );
  }
}
