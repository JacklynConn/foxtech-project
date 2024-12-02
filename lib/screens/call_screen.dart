import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../widgets/texts/appbar_title_widget.dart';
import '/widgets/texts/subtitle_widget.dart';
import '../common/utilities/assets_manager.dart';
import '/common/styles/app_strings.dart';
import 'package:lottie/lottie.dart';

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
      title: AppBar(
        title: const AppBarTitleWidget(
          label: AppStrings.call,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.call,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.setting),
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
            height: 200,
            child: Lottie.asset(
              AssetsManager.chatAnimation,
              fit: BoxFit.cover,
            ),
          ),
          const SubtitleWidget(
            label: AppStrings.makeCall,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          SubtitleWidget(
            label: AppStrings.youRecent,
            color: Theme.of(context).textTheme.bodySmall!.color,
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
            child: SubtitleWidget(
              label: AppStrings.callNow,
              color: Theme.of(context).textTheme.titleLarge!.color,
            ),
          ),
        ],
      ),
    );
  }
}
