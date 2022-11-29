import 'package:flutter/material.dart';

class myAppbar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  myAppbar({Key? key, this.title = ''}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title),
    );
  }
}
