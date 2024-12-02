import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:foxtech_project/common/themes/colors.dart';
import 'package:foxtech_project/widgets/texts/title_widget.dart';
import '/widgets/texts/appbar_title_widget.dart';
import '/widgets/texts/subtitle_widget.dart';
import '../common/styles/app_strings.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildChatList(context),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      title: const AppBarTitleWidget(label: AppStrings.chat),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.setting),
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildChatList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          allMessage(context),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: listChat.length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var chat = listChat[index];
                return Column(
                  children: [
                    Card(
                      elevation: 0,
                      color: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            NetworkImage(chat.avatarUrl),
                                      ),
                                      chat.isOnline
                                          ? Positioned(
                                              right: 2,
                                              bottom: 2,
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green,
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 2,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SubtitleWidget(
                                            label: chat.name,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          const SizedBox(height: 5),
                                          SubtitleWidget(
                                            label: chat.message,
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SubtitleWidget(
                                    label: '${chat.time} pm',
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(height: 10),
                                  CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).colorScheme.onPrimary,
                                    radius: 10,
                                    child: const SubtitleWidget(label: '2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget allMessage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const TitleWidget(
            label: AppStrings.allMessages,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            radius: 12,
            child: SubtitleWidget(
              label: '2',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: lWhite,
            ),
          ),
        ],
      ),
    );
  }
}
