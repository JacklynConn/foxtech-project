import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
    );
  }

  AppBar get _appBar {
    return AppBar(
      title: Text(
        AppStrings.friend,
        style: AppStyles.appTitle(size: 22),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_add),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.setting),
        ),
      ],
      backgroundColor: Colors.transparent,
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
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.3),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColorDark,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    AppStrings.userNames,
                    style: AppStyles.bold(
                      size: 18,
                      color: Theme.of(context).primaryColorDark,
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
                      color: Theme.of(context).highlightColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Text(
                          AppStrings.profile,
                          style: AppStyles.regular1(
                            size: 16,
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorLight,
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
                    size: 18, color: Theme.of(context).primaryColor),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).primaryColor,
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
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).primaryColor,
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
                  color: Theme.of(context).primaryColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).primaryColor,
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
                        color: Theme.of(context).primaryColor,
                        width: 1,
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.mail,
                      color: Theme.of(context).primaryColorDark,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppStrings.inviteFriends,
                    style: AppStyles.medium(
                      size: 16,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).primaryColor,
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
