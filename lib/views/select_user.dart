import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streamer_chat/core/theme.dart';

class SelectUser extends StatelessWidget {
  const SelectUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/Stream Mark.png',
                  width: 69.57,
                  height: 40.28,
                ),
              ),
              const SizedBox(height: 19),
              const Text(
                'Welcome To Streamer Chat',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 12),
              const Text(
                'Select a user to try the Android sdk',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 32),

              // Scrollable area for users
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UserTile(
                        avatar: 'images/Avatar1.png',
                        name: 'Andrew Jones',
                        subtitle: 'Stream test account',
                      ),
                      UserTile(
                        avatar: 'images/Avatar2.png',
                        name: 'Jane Doe',
                        subtitle: 'Stream test account',
                      ),
                      UserTile(
                        avatar: 'images/Avatar3.png',
                        name: 'Bryce Mosley',
                        subtitle: 'Stream test account',
                      ),
                      UserTile(
                        avatar: 'images/Avatar4.png',
                        name: 'Dona l Lundee jnr',
                        subtitle: 'Stream test account',
                      ),
                      UserTile(
                        avatar: 'images/Avatar5.png',
                        name: 'Hanako Arasara',
                        subtitle: 'Stream test account',
                      ),
                      const SettingsTile(),
                    ],
                  ),
                ),
              ),

              // Bottom fixed Settings tile
              // const SettingsTile(),
              SizedBox(height: 37),
              const Text(
                'Stream SDK v.X.X.X',
                style: TextStyle(color: AppColors.grainsboro),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final String avatar;
  final String name;
  final String subtitle;

  const UserTile({
    super.key,
    required this.avatar,
    required this.name,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.greywisper, width: 1.0),
        ),
      ),
      child: Row(
        children: [
          Image.asset(avatar, width: 40, height: 40),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(subtitle, style: TextStyle(color: AppColors.fontcolor)),
              ],
            ),
          ),
          SvgPicture.asset('images/svgs/Icon_arrow_right.svg'),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.greywisper, width: 1.0),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('images/svgs/Setting.svg', width: 40, height: 40),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                ),
                Text(
                  'Stream configuration',
                  style: TextStyle(color: AppColors.fontcolor),
                ),
              ],
            ),
          ),
          SvgPicture.asset('images/svgs/Icon_arrow_right.svg'),
        ],
      ),
    );
  }
}
