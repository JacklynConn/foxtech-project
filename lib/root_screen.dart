import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common/styles/app_strings.dart';
import '/controllers/root_controller.dart';
import 'package:get/get.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final RootController _rootController = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: IndexedStack(
            index: _rootController.currentIndex,
            children: _rootController.lstScreens,
          ),
          bottomNavigationBar: BottomAppBar(
            color: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        _rootController.bottomNavigationTap(0);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: _rootController.currentIndex == 0
                                ? Theme.of(context).colorScheme.primary
                                : Colors.grey,
                          ),
                          Text(
                            AppStrings.friend,
                            style: TextStyle(
                              color: _rootController.currentIndex == 0
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        _rootController.bottomNavigationTap(1);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble,
                            color: _rootController.currentIndex == 1
                                ? Theme.of(context).colorScheme.primary
                                : Colors.grey,
                          ),
                          Text(
                            AppStrings.chat,
                            style: TextStyle(
                              color: _rootController.currentIndex == 1
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        _rootController.bottomNavigationTap(2);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: _rootController.currentIndex == 2
                                ? Theme.of(context).colorScheme.primary
                                : Colors.grey,
                          ),
                          Text(
                            AppStrings.call,
                            style: TextStyle(
                              color: _rootController.currentIndex == 2
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        _rootController.bottomNavigationTap(3);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: _rootController.currentIndex == 3
                                ? Theme.of(context).colorScheme.primary
                                : Colors.grey,
                          ),
                          Text(
                            AppStrings.more,
                            style: TextStyle(
                              color: _rootController.currentIndex == 3
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
