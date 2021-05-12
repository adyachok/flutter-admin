import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideNav extends StatelessWidget {
  const SideNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
                title: 'Dashboard',
                svgSrc: 'assets/icons/menu_dashbord.svg',
                press: () {}),
            DrawerListTile(
                title: 'Transaction',
                svgSrc: 'assets/icons/menu_tran.svg',
                press: () {}),
            DrawerListTile(
                title: 'Documents',
                svgSrc: 'assets/icons/menu_doc.svg',
                press: () {}),
            DrawerListTile(
                title: 'Tasks',
                svgSrc: 'assets/icons/menu_task.svg',
                press: () {}),
            DrawerListTile(
                title: 'Store',
                svgSrc: 'assets/icons/menu_store.svg',
                press: () {}),
            DrawerListTile(
                title: 'Notification',
                svgSrc: 'assets/icons/menu_notification.svg',
                press: () {}),
            DrawerListTile(
                title: 'Profile',
                svgSrc: 'assets/icons/menu_profile.svg',
                press: () {}),
            DrawerListTile(
                title: 'Setting',
                svgSrc: 'assets/icons/menu_setting.svg',
                press: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: this.press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        this.svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        this.title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}