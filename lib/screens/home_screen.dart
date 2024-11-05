import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '/constants/app_strings.dart';
import '/constants/app_colours.dart';
import '/constants/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        style: AppStyles.bold(size: 25),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_add_alt),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.setting),
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
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: AppColours.blueAccent,
                      border: Border.all(
                        color: AppColours.grey.withOpacity(0.5),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColours.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      color: AppColours.bgColour.withOpacity(0.5),
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    AppStrings.userNames,
                    style: AppStyles.bold(size: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: AppColours.light20.withOpacity(0.5),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      children: [
                        Text(
                          AppStrings.profile,
                          style: AppStyles.regular1(
                              color: AppColours.light20, size: 15),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.add,
                          size: 15,
                          color: AppColours.light20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.channel,
                style: AppStyles.medium(size: 18, color: AppColours.light20),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColours.grey,
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
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(23),
                      ),
                      border: Border.all(
                        color: AppColours.grey.withOpacity(0.5),
                        width: 1,
                      ),
                      color: AppColours.yellow,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Kakao Icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppStrings.channel,
                    style: AppStyles.medium(
                      size: 18,
                      color: AppColours.light20,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColours.grey,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.friend,
                style: AppStyles.medium(size: 18, color: AppColours.light20),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColours.grey,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(23),
                      ),
                      border: Border.all(
                        color: AppColours.grey.withOpacity(0.5),
                        width: 1,
                      ),
                      color: AppColours.light20,
                    ),
                    child: Icon(
                      Icons.mail,
                      color: AppColours.grey,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Text(
                    AppStrings.inviteFriends,
                    style: AppStyles.medium(
                      size: 18,
                      color: AppColours.black,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColours.grey,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
