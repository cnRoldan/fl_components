import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: AppTheme.secondary,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/vlad_avatar.jpg'),
          maxRadius: 120,
        ),
      ),
    );
  }
}
