import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_time/my_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.theme.primaryColor,
        title: Row(
          children: [
            Text(
              'Settings',
              style: context.textTheme.displayMedium,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24),
          Tile(
            s: 'Reset Progress',
            onPressed: () {},
            path: 'images/svg/reset.svg',
          ),
          Tile(
            s: 'Privacy Policy',
            onPressed: () {},
            path: 'images/svg/privacy.svg',
          ),
          Tile(
            s: 'Share app',
            onPressed: () {},
            path: 'images/svg/share.svg',
          ),
          Tile(
            s: 'Terms of Use',
            onPressed: () {},
            path: 'images/svg/terms.svg',
          ),
          Tile(
            s: 'Rate app',
            onPressed: () {},
            path: 'images/svg/rate.svg',
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.s,
    required this.onPressed,
    required this.path,
  });

  final String s;
  final VoidCallback onPressed;
  final String path;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
        child: Row(
          children: [
            SvgPicture.asset(path),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                s,
                style: const TextStyle(color: MyTheme.black, fontSize: 16),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: MyTheme.black,
            ),
          ],
        ),
      ),
    );
  }
}
