import 'package:flutter/material.dart';

void main() {
  runApp(const StreamerChat());
}

class StreamerChat extends StatelessWidget {
  const StreamerChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streamer Chat',
      home: Scaffold(body: Text('Hello flutter')),
    );
  }
}
