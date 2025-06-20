import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streamer_chat/components/footer/footer.dart';
import 'package:streamer_chat/core/theme.dart';

class AdvancedOptionScreen extends StatelessWidget {
  const AdvancedOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            'images/svgs/Left_Chevron.svg',
            width: 24,
            height: 24,
          ),
        ),
        title: const Text(
          'Advanced options',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey.shade300, // Border color
            height: 1.0, // Border thickness
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // ✅ Put it here
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'CHAT API KEY',
                        labelStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.fontcolor,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 24,
                          left: 25,
                          right: 25,
                          bottom: 25,
                        ),
                        filled: true,
                        fillColor: AppColors.whitesmoke,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User Token',
                        labelStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.fontcolor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 24,
                          left: 25,
                          right: 25,
                          bottom: 25,
                        ),
                        filled: true,
                        fillColor: AppColors.whitesmoke,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username (optional)',
                        labelStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.fontcolor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 24,
                          left: 25,
                          right: 25,
                          bottom: 25,
                        ),
                        filled: true,
                        fillColor: AppColors.whitesmoke,
                      ),
                    ),
                  ],
                ),

                /// Footer (pushed to bottom if there's space)
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/channel');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        elevation: 1,
                        // height: 48,
                        minimumSize: Size(double.infinity, 58),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.backgroundColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    const Footer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
