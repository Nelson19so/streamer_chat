import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streamer_chat/core/theme.dart';

class AdvancedSettingsTile extends StatelessWidget {
  const AdvancedSettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/advanced_option');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 12, bottom: 12, top: 12),
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
                    'Advanced Options',
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
      ),
    );
  }
}
