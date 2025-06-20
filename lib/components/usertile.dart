import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streamer_chat/core/theme.dart';

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
      padding: const EdgeInsets.only(left: 8, right: 12, bottom: 12, top: 12),
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
