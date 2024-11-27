import 'package:flutter/material.dart';
import 'package:foxtech_project/screens/auth/login_screen.dart';
import 'package:foxtech_project/widgets/texts/subtitle_widget.dart';
import 'package:foxtech_project/widgets/texts/title_widget.dart';
import 'package:get/get.dart';
import 'inner_screens/theme_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleWidget(
          label: 'Settings',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SubtitleWidget(
                    label: 'Account',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                ListTile(
                  title:
                      const Text('Dark Mode', style: TextStyle(fontSize: 18)),
                  trailing: IconButton(
                    onPressed: () {
                      Get.to(
                        () => ThemeScreen(),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                  subtitle: const Text('Enable dark mode'),
                ),
                // Log out
                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => LoginScreen(),
                    );
                  },
                  child: const Text('Log Out'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
