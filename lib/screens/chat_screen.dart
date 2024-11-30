import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:foxtech_project/widgets/texts/subtitle_widget.dart';
import '../common/styles/app_strings.dart';
import '../common/styles/app_styles.dart';
import '../common/styles/app_theme_color.dart';

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
      title: Text(
        AppStrings.chat,
        style: AppStyles.appTitle(size: 22),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SubtitleWidget(
                  label: 'All Messages',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Theme.of(context).cardColor,
                  radius: 14,
                  child: SubtitleWidget(
                    label: '2',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Theme.of(context).cardColor,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 12),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      const CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                          'https://i0.wp.com/reflektoronline.com/wp-content/uploads/2022/08/ronaldo-cristiano-AFP.jpg?fit=1308%2C818&ssl=1',
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  const Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SubtitleWidget(
                                            label: 'Cristiano Ronaldo',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          SizedBox(height: 5),
                                          SubtitleWidget(
                                            label: 'Hello, how are you?, ',
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
                                    label: '10:30 AM',
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(height: 10),
                                  CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    radius: 10,
                                    child: Text(
                                      '2',
                                      style: AppStyles.medium(
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                    ),
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
}
