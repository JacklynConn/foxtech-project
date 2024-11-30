import 'package:flutter/material.dart';
import 'package:foxtech_project/widgets/texts/subtitle_widget.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  String title;
  List<Widget>? actions;

  AppbarWidget({super.key, required this.title, this.actions});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SubtitleWidget(
        label: widget.title,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      actions: widget.actions,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
