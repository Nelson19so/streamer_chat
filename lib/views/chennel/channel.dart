import 'package:flutter/material.dart';
import 'package:streamer_chat/components/header/channel_appbar.dart';

class Channel extends StatelessWidget {
  const Channel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(child: Text('Channel Screen')),
    );
  }
}
