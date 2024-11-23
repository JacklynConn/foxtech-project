import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foxtech_project/constants/app_strings.dart';
import 'package:foxtech_project/utilities/assets_manager.dart';
import 'package:lottie/lottie.dart';

import '../constants/app_styles.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _buildCallList,
    );
  }

  AppBar get _appBar {
    return AppBar(
      title: Text(
        AppStrings.call,
        style: AppStyles.appTitle(size: 22),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.phone_fill),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
          ),
        )
      ],
      backgroundColor: Colors.transparent,
    );
  }

  Widget get _buildCallList {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            AssetsManager.chatAnimation,
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 10),
          Text(
            'No call history',
            style: AppStyles.appTitle(size: 18),
          ),
        ],
      ),
    );
  }
}
