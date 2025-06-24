import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streamer_chat/components/header/channel_appbar.dart';

class Channel extends StatelessWidget {
  const Channel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChannelAppbar(title: 'Channel'),
      drawer: Drawer(),
      body: Center(child: const Text('Channel Screen')),
    );
  }
}
