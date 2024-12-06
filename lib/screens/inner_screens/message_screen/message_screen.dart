import 'dart:io';
import 'package:flutter/material.dart';
import '/controllers/theme_controller.dart';
import '../../../models/chat_model.dart';
import '../../../models/message_model.dart';
import 'package:get/get.dart';
import '../../../widgets/chat/bottom_chat_widget.dart';
import '../../../widgets/texts/subtitle_widget.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final ChatModel chatModel = Get.arguments as ChatModel;

  ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildMessageList(context),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(chatModel.avatarUrl),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleWidget(label: chatModel.name, fontSize: 18),
              SubtitleWidget(
                label: 'Online',
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }

  Widget buildMessageList(BuildContext context) {
    return Stack(
      children: [
        themeController.themeMode.value == ThemeMode.dark
            ? Image.network(
                'https://i.pinimg.com/736x/d2/bf/d3/d2bfd3ea45910c01255ae022181148c4.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              )
            : Image.network(
                'https://i.pinimg.com/736x/3d/8c/2f/3d8c2f2c82c1c9ef1e27be645cd1aa17.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: listMessage.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final message = listMessage[index];
                    return Column(
                      children: [
                        Container(
                          alignment: message.isMe
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: message.isMe
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.grey,
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(20),
                                    topRight: const Radius.circular(20),
                                    bottomLeft: Radius.circular(
                                      message.isMe ? 20 : 0,
                                    ),
                                    bottomRight: Radius.circular(
                                      message.isMe ? 0 : 20,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      message.message,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const BottomChatWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactInfo(ChatModel chatModel) {
    return const Row(
      children: [
        CircleAvatar(
          child: Icon(Icons.person),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Online',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
