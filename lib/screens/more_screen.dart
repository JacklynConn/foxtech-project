import 'package:flutter/material.dart';
import 'package:foxtech_project/common/utilities/assets_manager.dart';
import '../common/routes/name.dart';
import '/controllers/theme_controller.dart';
import '/widgets/texts/subtitle_widget.dart';
import '../common/styles/app_strings.dart';
import '../common/themes/colors.dart';
import '../widgets/texts/title_widget.dart';
import '/widgets/texts/appbar_title_widget.dart';
import 'package:get/get.dart';
import 'inner_screens/theme_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _buildMoreList,
    );
  }

  AppBar get _appBar {
    return AppBar(
      title: const AppBarTitleWidget(
        label: AppStrings.more,
      ),
    );
  }

  Widget get _buildMoreList {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 10,
      ),
      child: ListView(
        children: [
          _buildProfile,
          const SizedBox(height: 20),
          Divider(
            color: lGrey,
            thickness: 0.5,
          ),
          const SizedBox(height: 20),
          // Privacy
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: lGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.privacy_tip,
                            ),
                            SizedBox(width: 20),
                            SubtitleWidget(
                              label: AppStrings.privacy,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: lGrey,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                  thickness: 2,
                ),
                // Themes
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.themeScreen);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  AssetsManager.themeImage,
                                  height: 20,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SubtitleWidget(
                                    label: AppStrings.themes,
                                  ),
                                  Obx(
                                    () => SubtitleWidget(
                                      label: _themeController.themeMode.value ==
                                              ThemeMode.dark
                                          ? 'Dark Mode'
                                          : _themeController.themeMode.value ==
                                                  ThemeMode.light
                                              ? 'Light Mode'
                                              : 'System',
                                      color: lGrey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.themeScreen);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: lGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.settings,
                            ),
                            SizedBox(width: 20),
                            SubtitleWidget(
                              label: AppStrings.settings,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: lGrey,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                  thickness: 2,
                ),
                // about
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.info,
                            ),
                            SizedBox(width: 20),
                            SubtitleWidget(
                              label: AppStrings.about,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: lGrey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubtitleWidget(
                label: AppStrings.version,
                fontSize: 16,
              ),
              const SizedBox(width: 5),
              SubtitleWidget(
                label: AppStrings.versionNumber,
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Get.offAllNamed(AppRoutes.loginScreen);
                },
                child: SubtitleWidget(
                  label: AppStrings.logOut,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: lWhite,
                ),
              ),
            ],
          ),
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
            Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
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
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: lGrey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: lBlack.withOpacity(0.5),
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.edit,
                        color: lWhite,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleWidget(label: AppStrings.userNames),
                SubtitleWidget(
                  label: AppStrings.phone,
                  fontSize: 14,
                  color: lGrey,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: lGrey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                AppStrings.manage,
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
