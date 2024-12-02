import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:foxtech_project/common/themes/colors.dart';
import 'package:foxtech_project/widgets/texts/title_widget.dart';
import '/widgets/friend/top_name_dropdown_list.dart';
import '/widgets/texts/appbar_title_widget.dart';
import '../widgets/texts/subtitle_widget.dart';
import '../common/styles/app_strings.dart';

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
      body: _buildChatList(context),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  AppBar get _appBar {
    return AppBar(
      title: const AppBarTitleWidget(label: AppStrings.friend),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.search,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.message,
          ),
        ),
      ],
    );
  }

  Widget _buildChatList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: ListView(
        children: [
          _buildProfile,
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          const TopNameDropDownList(
            name: AppStrings.group,
            icon: Icons.keyboard_arrow_down_rounded,
          ),
          const SizedBox(height: 10),
          buildListGroups(context),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          const TopNameDropDownList(
            name: AppStrings.friend,
            icon: Icons.keyboard_arrow_down_rounded,
          ),
          const SizedBox(height: 10),
          buildListFriends(context),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget get _buildProfile {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Icon(
                Icons.person,
                color: lWhite,
                size: 35,
              ),
            ),
            const SizedBox(width: 10),
            const TitleWidget(label: AppStrings.userNames),
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
                color: Theme.of(context).colorScheme.onSurface,
                border: Border.all(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                children: [
                  SubtitleWidget(
                    label: AppStrings.profile,
                    fontSize: 16,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.add,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildListGroups(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
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
              style: TextStyle(
                fontSize: 16,
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
    );
  }

  Widget buildListFriends(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 1,
                ),
                color: Theme.of(context).colorScheme.shadow,
              ),
              child: Icon(
                Icons.mail,
                color: lWhite,
                size: 30,
              ),
            ),
            const SizedBox(width: 16),
            const SubtitleWidget(label: AppStrings.inviteFriends, fontSize: 14),
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
    );
  }
}
