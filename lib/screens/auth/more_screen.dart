import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/theme_screen.dart';

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
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Dark Mode'),
                  trailing: IconButton(
                    onPressed: () {
                      Get.to(() => ThemeScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                  subtitle: const Text('Enable dark mode'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
