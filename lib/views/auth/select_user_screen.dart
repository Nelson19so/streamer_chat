import 'package:flutter/material.dart';
import 'package:streamer_chat/components/advanced_settings_tile.dart';
import 'package:streamer_chat/components/footer/footer.dart';
import '../../components/usertile.dart';

class SelectUser extends StatelessWidget {
  const SelectUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // ✅ Put it here
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Top Section
                  Column(
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
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Select a user to try the Android sdk',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 32),

                      /// User tiles
                      GestureDetector(
                        onTap: () {
                          print('hello Andrew');
                        },
                        child: UserTile(
                          avatar: 'images/Avatar1.png',
                          name: 'Andrew Jones',
                          subtitle: 'Stream test account',
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          print('John Doe');
                        },
                        child: UserTile(
                          avatar: 'images/Avatar2.png',
                          name: 'Jane Doe',
                          subtitle: 'Stream test account',
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          print('Bryce Mosley');
                        },
                        child: UserTile(
                          avatar: 'images/Avatar3.png',
                          name: 'Bryce Mosley',
                          subtitle: 'Stream test account',
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          print('Donal Lundee jnr');
                        },
                        child: UserTile(
                          avatar: 'images/Avatar4.png',
                          name: 'Donal Lundee jnr',
                          subtitle: 'Stream test account',
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          print('Hanako Arasara');
                        },
                        child: UserTile(
                          avatar: 'images/Avatar5.png',
                          name: 'Hanako Arasara',
                          subtitle: 'Stream test account',
                        ),
                      ),

                      const AdvancedSettingsTile(),
                    ],
                  ),

                  /// Footer (pushed to bottom if there's space)
                  const SizedBox(height: 37),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
