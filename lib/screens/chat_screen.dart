import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../common/styles/app_strings.dart';
import '../common/styles/app_styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildChatList(context),
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      title: Text(
        AppStrings.chat,
        style: AppStyles.appTitle(size: 22),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chat_bubble),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chat_bubble_text_fill),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.setting),
        ),
      ],
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildChatList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://i0.wp.com/reflektoronline.com/wp-content/uploads/2022/08/ronaldo-cristiano-AFP.jpg?fit=1308%2C818&ssl=1',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: AppStyles.medium(
                                size: 20,
                                color: Theme.of(context).primaryColor),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Hello, how are you?',
                            style: AppStyles.regular1(
                              size: 14,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '10:00 AM',
                        style: AppStyles.medium(
                          size: 14,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 1,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            '@ 10',
                            style: AppStyles.medium(
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
