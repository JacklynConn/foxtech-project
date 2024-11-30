import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foxtech_project/widgets/texts/subtitle_widget.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
      elevation: 0,
    );
  }

  Widget get _buildCallList {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 220,
            child: Lottie.asset(
              AssetsManager.chatAnimation,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Make calls to your friends',
            style: AppStyles.appTitle(
              size: 20,
              color: Theme.of(context).textTheme.titleLarge!.color,
            ),
          ),
          SubtitleWidget(
            label: 'You recent history will be listed here',
            color: Theme.of(context).textTheme.titleMedium!.color,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).cardColor,
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
            child: SubtitleWidget(label: 'Call Now', color: Theme.of(context).textTheme.titleLarge!.color),
          ),
        ],
      ),
    );
  }
}
