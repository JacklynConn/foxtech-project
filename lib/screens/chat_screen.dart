import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:foxtech_project/models/chat_model.dart';
import '/constants/app_strings.dart';
import '/constants/app_styles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: buildChatList(),
    );
  }

  AppBar get _appBar {
    return AppBar(
      title: Text(
        AppStrings.chat,
        style: AppStyles.bold(
          size: 25,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chat_bubble, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.chat_bubble_2,
            color: Colors.black,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.setting, color: Colors.black),
        ),
      ],
    );
  }

  Widget buildChatList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            chatList[index].avatarUrl,
                          ),
                        ),
                        chatList[index].isOnline
                            ? Positioned(
                                right: 0,
                                bottom: 0,
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
                              )
                            : const SizedBox(),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                chatList[index].name,
                                style: AppStyles.bold(
                                  size: 16,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 10),
                            if (chatList[index].amountChat != 0)
                              Text(
                                chatList[index].amountChat.toString(),
                                style: AppStyles.medium(
                                  size: 18,
                                  color: Colors.grey,
                                ),
                              ),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            chatList[index].message,
                            style: AppStyles.regular1(size: 15),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${DateTime.now().hour}:${DateTime.now().minute} PM',
                      style: AppStyles.medium(size: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        '@ ${chatList[index].amountChat}',
                        style: AppStyles.medium(size: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
