// lib/components/custom_app_bar.dart

import 'package:flutter/material.dart';

class ChannelAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ChannelAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder:
            (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('images/Avatar1.png'),
            ),
      ),
      title: Text(title),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.shade300, // Border color
          height: 1.0, // Border thickness
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1.0);
}
