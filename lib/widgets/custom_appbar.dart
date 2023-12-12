import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool? automaticallyImplyLeading;
  final String text;

  const CustomAppBar(
      {Key? key,
      this.title,
      this.automaticallyImplyLeading,
      required this.text})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 64, 67, 120),
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text(text),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
