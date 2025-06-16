import 'package:flutter/material.dart';
import 'package:streamer_chat/config/routes.dart';

void main() {
  runApp(const StreamerChat());
}

class StreamerChat extends StatelessWidget {
  const StreamerChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streamer Chat',
      initialRoute: AppRoutes.selectUser,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
