import 'package:flutter/material.dart';
import 'package:streamer_chat/core/theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Stream SDK v.X.X.X',
          style: TextStyle(color: AppColors.grainsboro),
        ),
      ],
    );
  }
}
