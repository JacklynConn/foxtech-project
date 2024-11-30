import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '/common/styles/app_theme_color.dart';
import '../widgets/texts/subtitle_widget.dart';
import '/widgets/appbar_widget.dart';
import '../common/styles/app_strings.dart';
import '../common/styles/app_styles.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({super.key});

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _buildChatList,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  AppbarWidget get _appBar {
    return AppbarWidget(
      title: AppStrings.friend,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.setting,
          ),
        ),
      ],
    );
  }

  Widget get _buildChatList {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: AppColors.secondaryColor,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    AppStrings.userNames,
                    style: AppStyles.bold(
                      size: 18,
                      color: Theme.of(context).textTheme.titleLarge?.color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      border: Border.all(
                        color: AppColors.lightGrey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        SubtitleWidget(
                          label: AppStrings.profile,
                          fontSize: 16,
                          color: Theme.of(context).textTheme.titleMedium?.color,
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.add,
                          color: Theme.of(context).textTheme.titleMedium?.color,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.group,
                style: AppStyles.medium(
                  size: 18,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(23),
                      ),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                      ),
                      color: Theme.of(context).primaryColor,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Kakao Icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppStrings.group,
                    style: AppStyles.medium(
                      size: 16,
                      color: Theme.of(context).textTheme.titleLarge?.color,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.friend,
                style: AppStyles.medium(
                  size: 18,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(23),
                      ),
                      border: Border.all(
                        color: AppColors.lightGrey,
                        width: 1,
                      ),
                      color: AppColors.lightGrey,
                    ),
                    child: Icon(
                      Icons.mail,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppStrings.inviteFriends,
                    style: AppStyles.medium(
                      size: 16,
                      color: Theme.of(context).textTheme.titleLarge?.color,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
