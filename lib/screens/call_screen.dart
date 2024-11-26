import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common/utilities/assets_manager.dart';
import '/common/styles/app_strings.dart';
import 'package:lottie/lottie.dart';

import '../common/styles/app_styles.dart';

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
          SizedBox(
            width: 300,
            height: 240,
            child: Lottie.asset(
              AssetsManager.chatAnimation,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Make calls to your friends',
            style: AppStyles.appTitle(
              size: 22,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          Text(
            'You recent history will be listed here',
            style: AppStyles.regular1(size: 16, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffff6f6f6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
            ),
            onPressed: () {},
            child: Text(
              'Call Now',
              style: AppStyles.bold(
                size: 18,
                color: Theme.of(context).textTheme.titleSmall!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
